#import <UIKit/UIKit.h>
@class RACSignal<__covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface UIGestureRecognizer (RACSignalSupport)
- (RACSignal<__kindof UIGestureRecognizer *> *)rac_gestureSignal;
@end
NS_ASSUME_NONNULL_END
