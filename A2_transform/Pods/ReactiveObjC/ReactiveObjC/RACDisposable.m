#import "RACDisposable.h"
#import "RACScopedDisposable.h"
#import <libkern/OSAtomic.h>
@interface RACDisposable () {
	void * volatile _disposeBlock;
}
@end
@implementation RACDisposable
#pragma mark Properties
- (BOOL)isDisposed {
	return _disposeBlock == NULL;
}
#pragma mark Lifecycle
- (instancetype)init {
	self = [super init];
	_disposeBlock = (__bridge void *)self;
	OSMemoryBarrier();
	return self;
}
- (instancetype)initWithBlock:(void (^)(void))block {
	NSCParameterAssert(block != nil);
	self = [super init];
	_disposeBlock = (void *)CFBridgingRetain([block copy]); 
	OSMemoryBarrier();
	return self;
}
+ (instancetype)disposableWithBlock:(void (^)(void))block {
	return [[self alloc] initWithBlock:block];
}
- (void)dealloc {
	if (_disposeBlock == NULL || _disposeBlock == (__bridge void *)self) return;
	CFRelease(_disposeBlock);
	_disposeBlock = NULL;
}
#pragma mark Disposal
- (void)dispose {
	void (^disposeBlock)(void) = NULL;
	while (YES) {
		void *blockPtr = _disposeBlock;
		if (OSAtomicCompareAndSwapPtrBarrier(blockPtr, NULL, &_disposeBlock)) {
			if (blockPtr != (__bridge void *)self) {
				disposeBlock = CFBridgingRelease(blockPtr);
			}
			break;
		}
	}
	if (disposeBlock != nil) disposeBlock();
}
#pragma mark Scoped Disposables
- (RACScopedDisposable *)asScopedDisposable {
	return [RACScopedDisposable scopedDisposableWithDisposable:self];
}
@end
