#import <UIKit/UIKit.h>
@class RACSignal<__covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface UIControl (RACSignalSupport)
- (RACSignal<__kindof UIControl *> *)rac_signalForControlEvents:(UIControlEvents)controlEvents;
@end
NS_ASSUME_NONNULL_END
