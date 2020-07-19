#import "RACDisposable.h"
NS_ASSUME_NONNULL_BEGIN
@interface RACCompoundDisposable : RACDisposable
+ (instancetype)compoundDisposable;
+ (instancetype)compoundDisposableWithDisposables:(nullable NSArray *)disposables;
- (void)addDisposable:(nullable RACDisposable *)disposable;
- (void)removeDisposable:(nullable RACDisposable *)disposable;
@end
NS_ASSUME_NONNULL_END
