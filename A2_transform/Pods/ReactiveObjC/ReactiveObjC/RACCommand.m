#import "RACCommand.h"
#import <ReactiveObjC/RACEXTScope.h>
#import "NSArray+RACSequenceAdditions.h"
#import "NSObject+RACDeallocating.h"
#import "NSObject+RACDescription.h"
#import "NSObject+RACPropertySubscribing.h"
#import "RACMulticastConnection.h"
#import "RACReplaySubject.h"
#import "RACScheduler.h"
#import "RACSequence.h"
#import "RACSignal+Operations.h"
#import <libkern/OSAtomic.h>
NSString * const RACCommandErrorDomain = @"RACCommandErrorDomain";
NSString * const RACUnderlyingCommandErrorKey = @"RACUnderlyingCommandErrorKey";
const NSInteger RACCommandErrorNotEnabled = 1;
@interface RACCommand () {
	volatile uint32_t _allowsConcurrentExecution;
}
@property (nonatomic, strong, readonly) RACSubject *addedExecutionSignalsSubject;
@property (nonatomic, strong, readonly) RACSubject *allowsConcurrentExecutionSubject;
@property (nonatomic, strong, readonly) RACSignal *immediateEnabled;
@property (nonatomic, copy, readonly) RACSignal * (^signalBlock)(id input);
@end
@implementation RACCommand
#pragma mark Properties
- (BOOL)allowsConcurrentExecution {
	return _allowsConcurrentExecution != 0;
}
- (void)setAllowsConcurrentExecution:(BOOL)allowed {
	if (allowed) {
		OSAtomicOr32Barrier(1, &_allowsConcurrentExecution);
	} else {
		OSAtomicAnd32Barrier(0, &_allowsConcurrentExecution);
	}
	[self.allowsConcurrentExecutionSubject sendNext:@(_allowsConcurrentExecution)];
}
#pragma mark Lifecycle
- (instancetype)init {
	NSCAssert(NO, @"Use -initWithSignalBlock: instead");
	return nil;
}
- (instancetype)initWithSignalBlock:(RACSignal<id> * (^)(id input))signalBlock {
	return [self initWithEnabled:nil signalBlock:signalBlock];
}
- (void)dealloc {
	[_addedExecutionSignalsSubject sendCompleted];
	[_allowsConcurrentExecutionSubject sendCompleted];
}
- (instancetype)initWithEnabled:(RACSignal *)enabledSignal signalBlock:(RACSignal<id> * (^)(id input))signalBlock {
	NSCParameterAssert(signalBlock != nil);
	self = [super init];
	_addedExecutionSignalsSubject = [RACSubject new];
	_allowsConcurrentExecutionSubject = [RACSubject new];
	_signalBlock = [signalBlock copy];
	_executionSignals = [[[self.addedExecutionSignalsSubject
		map:^(RACSignal *signal) {
			return [signal catchTo:[RACSignal empty]];
		}]
		deliverOn:RACScheduler.mainThreadScheduler]
		setNameWithFormat:@"%@ -executionSignals", self];
	RACMulticastConnection *errorsConnection = [[[self.addedExecutionSignalsSubject
		flattenMap:^(RACSignal *signal) {
			return [[signal
				ignoreValues]
				catch:^(NSError *error) {
					return [RACSignal return:error];
				}];
		}]
		deliverOn:RACScheduler.mainThreadScheduler]
		publish];
	_errors = [errorsConnection.signal setNameWithFormat:@"%@ -errors", self];
	[errorsConnection connect];
	RACSignal *immediateExecuting = [[[[self.addedExecutionSignalsSubject
		flattenMap:^(RACSignal *signal) {
			return [[[signal
				catchTo:[RACSignal empty]]
				then:^{
					return [RACSignal return:@-1];
				}]
				startWith:@1];
		}]
		scanWithStart:@0 reduce:^(NSNumber *running, NSNumber *next) {
			return @(running.integerValue + next.integerValue);
		}]
		map:^(NSNumber *count) {
			return @(count.integerValue > 0);
		}]
		startWith:@NO];
	_executing = [[[[[immediateExecuting
		deliverOn:RACScheduler.mainThreadScheduler]
		startWith:@NO]
		distinctUntilChanged]
		replayLast]
		setNameWithFormat:@"%@ -executing", self];
	RACSignal *moreExecutionsAllowed = [RACSignal
		if:[self.allowsConcurrentExecutionSubject startWith:@NO]
		then:[RACSignal return:@YES]
		else:[immediateExecuting not]];
	if (enabledSignal == nil) {
		enabledSignal = [RACSignal return:@YES];
	} else {
		enabledSignal = [enabledSignal startWith:@YES];
	}
	_immediateEnabled = [[[[RACSignal
		combineLatest:@[ enabledSignal, moreExecutionsAllowed ]]
		and]
		takeUntil:self.rac_willDeallocSignal]
		replayLast];
	_enabled = [[[[[self.immediateEnabled
		take:1]
		concat:[[self.immediateEnabled skip:1] deliverOn:RACScheduler.mainThreadScheduler]]
		distinctUntilChanged]
		replayLast]
		setNameWithFormat:@"%@ -enabled", self];
	return self;
}
#pragma mark Execution
- (RACSignal *)execute:(id)input {
	BOOL enabled = [[self.immediateEnabled first] boolValue];
	if (!enabled) {
		NSError *error = [NSError errorWithDomain:RACCommandErrorDomain code:RACCommandErrorNotEnabled userInfo:@{
			NSLocalizedDescriptionKey: NSLocalizedString(@"The command is disabled and cannot be executed", nil),
			RACUnderlyingCommandErrorKey: self
		}];
		return [RACSignal error:error];
	}
	RACSignal *signal = self.signalBlock(input);
	NSCAssert(signal != nil, @"nil signal returned from signal block for value: %@", input);
	RACMulticastConnection *connection = [[signal
		subscribeOn:RACScheduler.mainThreadScheduler]
		multicast:[RACReplaySubject subject]];
	[self.addedExecutionSignalsSubject sendNext:connection.signal];
	[connection connect];
	return [connection.signal setNameWithFormat:@"%@ -execute: %@", self, RACDescription(input)];
}
@end
