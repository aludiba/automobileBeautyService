#import "RACCompoundDisposable.h"
#import "RACCompoundDisposableProvider.h"
#import <pthread/pthread.h>
#define RACCompoundDisposableInlineCount 2
static CFMutableArrayRef RACCreateDisposablesArray(void) {
	CFArrayCallBacks callbacks = kCFTypeArrayCallBacks;
	callbacks.equal = NULL;
	return CFArrayCreateMutable(NULL, 0, &callbacks);
}
@interface RACCompoundDisposable () {
	pthread_mutex_t _mutex;
	#if RACCompoundDisposableInlineCount
	RACDisposable *_inlineDisposables[RACCompoundDisposableInlineCount];
	#endif
	CFMutableArrayRef _disposables;
	BOOL _disposed;
}
@end
@implementation RACCompoundDisposable
#pragma mark Properties
- (BOOL)isDisposed {
	pthread_mutex_lock(&_mutex);
	BOOL disposed = _disposed;
	pthread_mutex_unlock(&_mutex);
	return disposed;
}
#pragma mark Lifecycle
+ (instancetype)compoundDisposable {
	return [[self alloc] initWithDisposables:nil];
}
+ (instancetype)compoundDisposableWithDisposables:(NSArray *)disposables {
	return [[self alloc] initWithDisposables:disposables];
}
- (instancetype)init {
	self = [super init];
	const int result __attribute__((unused)) = pthread_mutex_init(&_mutex, NULL);
	NSCAssert(0 == result, @"Failed to initialize mutex with error %d.", result);
	return self;
}
- (instancetype)initWithDisposables:(NSArray *)otherDisposables {
	self = [self init];
	#if RACCompoundDisposableInlineCount
	[otherDisposables enumerateObjectsUsingBlock:^(RACDisposable *disposable, NSUInteger index, BOOL *stop) {
		self->_inlineDisposables[index] = disposable;
		if (index == RACCompoundDisposableInlineCount - 1) *stop = YES;
	}];
	#endif
	if (otherDisposables.count > RACCompoundDisposableInlineCount) {
		_disposables = RACCreateDisposablesArray();
		CFRange range = CFRangeMake(RACCompoundDisposableInlineCount, (CFIndex)otherDisposables.count - RACCompoundDisposableInlineCount);
		CFArrayAppendArray(_disposables, (__bridge CFArrayRef)otherDisposables, range);
	}
	return self;
}
- (instancetype)initWithBlock:(void (^)(void))block {
	RACDisposable *disposable = [RACDisposable disposableWithBlock:block];
	return [self initWithDisposables:@[ disposable ]];
}
- (void)dealloc {
	#if RACCompoundDisposableInlineCount
	for (unsigned i = 0; i < RACCompoundDisposableInlineCount; i++) {
		_inlineDisposables[i] = nil;
	}
	#endif
	if (_disposables != NULL) {
		CFRelease(_disposables);
		_disposables = NULL;
	}
	const int result __attribute__((unused)) = pthread_mutex_destroy(&_mutex);
	NSCAssert(0 == result, @"Failed to destroy mutex with error %d.", result);
}
#pragma mark Addition and Removal
- (void)addDisposable:(RACDisposable *)disposable {
	NSCParameterAssert(disposable != self);
	if (disposable == nil || disposable.disposed) return;
	BOOL shouldDispose = NO;
	pthread_mutex_lock(&_mutex);
	{
		if (_disposed) {
			shouldDispose = YES;
		} else {
			#if RACCompoundDisposableInlineCount
			for (unsigned i = 0; i < RACCompoundDisposableInlineCount; i++) {
				if (_inlineDisposables[i] == nil) {
					_inlineDisposables[i] = disposable;
					goto foundSlot;
				}
			}
			#endif
			if (_disposables == NULL) _disposables = RACCreateDisposablesArray();
			CFArrayAppendValue(_disposables, (__bridge void *)disposable);
			if (RACCOMPOUNDDISPOSABLE_ADDED_ENABLED()) {
				RACCOMPOUNDDISPOSABLE_ADDED(self.description.UTF8String, disposable.description.UTF8String, CFArrayGetCount(_disposables) + RACCompoundDisposableInlineCount);
			}
		#if RACCompoundDisposableInlineCount
		foundSlot:;
		#endif
		}
	}
	pthread_mutex_unlock(&_mutex);
	if (shouldDispose) [disposable dispose];
}
- (void)removeDisposable:(RACDisposable *)disposable {
	if (disposable == nil) return;
	pthread_mutex_lock(&_mutex);
	{
		if (!_disposed) {
			#if RACCompoundDisposableInlineCount
			for (unsigned i = 0; i < RACCompoundDisposableInlineCount; i++) {
				if (_inlineDisposables[i] == disposable) _inlineDisposables[i] = nil;
			}
			#endif
			if (_disposables != NULL) {
				CFIndex count = CFArrayGetCount(_disposables);
				for (CFIndex i = count - 1; i >= 0; i--) {
					const void *item = CFArrayGetValueAtIndex(_disposables, i);
					if (item == (__bridge void *)disposable) {
						CFArrayRemoveValueAtIndex(_disposables, i);
					}
				}
				if (RACCOMPOUNDDISPOSABLE_REMOVED_ENABLED()) {
					RACCOMPOUNDDISPOSABLE_REMOVED(self.description.UTF8String, disposable.description.UTF8String, CFArrayGetCount(_disposables) + RACCompoundDisposableInlineCount);
				}
			}
		}
	}
	pthread_mutex_unlock(&_mutex);
}
#pragma mark RACDisposable
static void disposeEach(const void *value, void *context) {
	RACDisposable *disposable = (__bridge id)value;
	[disposable dispose];
}
- (void)dispose {
	#if RACCompoundDisposableInlineCount
	RACDisposable *inlineCopy[RACCompoundDisposableInlineCount];
	#endif
	CFArrayRef remainingDisposables = NULL;
	pthread_mutex_lock(&_mutex);
	{
		_disposed = YES;
		#if RACCompoundDisposableInlineCount
		for (unsigned i = 0; i < RACCompoundDisposableInlineCount; i++) {
			inlineCopy[i] = _inlineDisposables[i];
			_inlineDisposables[i] = nil;
		}
		#endif
		remainingDisposables = _disposables;
		_disposables = NULL;
	}
	pthread_mutex_unlock(&_mutex);
	#if RACCompoundDisposableInlineCount
	for (unsigned i = 0; i < RACCompoundDisposableInlineCount; i++) {
		[inlineCopy[i] dispose];
	}
	#endif
	if (remainingDisposables == NULL) return;
	CFIndex count = CFArrayGetCount(remainingDisposables);
	CFArrayApplyFunction(remainingDisposables, CFRangeMake(0, count), &disposeEach, NULL);
	CFRelease(remainingDisposables);
}
@end
