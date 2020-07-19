#import "RACDisposable.h"
NS_ASSUME_NONNULL_BEGIN
@interface RACScopedDisposable : RACDisposable
+ (instancetype)scopedDisposableWithDisposable:(RACDisposable *)disposable;
@end
NS_ASSUME_NONNULL_END
