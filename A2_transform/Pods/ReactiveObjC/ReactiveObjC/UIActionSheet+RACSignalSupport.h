#import <UIKit/UIKit.h>
@class RACDelegateProxy;
@class RACSignal<__covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface UIActionSheet (RACSignalSupport)
@property (nonatomic, strong, readonly) RACDelegateProxy *rac_delegateProxy;
- (RACSignal<NSNumber *> *)rac_buttonClickedSignal;
@end
NS_ASSUME_NONNULL_END
