#import "RACDisposable.h"
NS_ASSUME_NONNULL_BEGIN
@interface RACSerialDisposable : RACDisposable
@property (atomic, strong, nullable) RACDisposable *disposable;
+ (instancetype)serialDisposableWithDisposable:(nullable RACDisposable *)disposable;
- (nullable RACDisposable *)swapInDisposable:(nullable RACDisposable *)newDisposable;
@end
NS_ASSUME_NONNULL_END
