#import <UIKit/UIKit.h>
@class RACChannelTerminal<ValueType>;
@class RACSignal<__covariant ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface UITextField (RACSignalSupport)
- (RACSignal<NSString *> *)rac_textSignal;
- (RACChannelTerminal<NSString *> *)rac_newTextChannel;
@end
NS_ASSUME_NONNULL_END
