#import <Foundation/Foundation.h>
@class RACCompoundDisposable;
NS_ASSUME_NONNULL_BEGIN
@protocol RACSubscriber <NSObject>
@required
- (void)sendNext:(nullable id)value;
- (void)sendError:(nullable NSError *)error;
- (void)sendCompleted;
- (void)didSubscribeWithDisposable:(RACCompoundDisposable *)disposable;
@end
NS_ASSUME_NONNULL_END
