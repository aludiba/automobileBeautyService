#import <Foundation/Foundation.h>
@class RACScopedDisposable;
NS_ASSUME_NONNULL_BEGIN
@interface RACDisposable : NSObject
@property (atomic, assign, getter = isDisposed, readonly) BOOL disposed;
+ (instancetype)disposableWithBlock:(void (^)(void))block;
- (void)dispose;
- (RACScopedDisposable *)asScopedDisposable;
@end
NS_ASSUME_NONNULL_END
