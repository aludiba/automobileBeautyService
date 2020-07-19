#import <UIKit/UIKit.h>
@class RACChannelTerminal<ValueType>;
NS_ASSUME_NONNULL_BEGIN
@interface UISwitch (RACSignalSupport)
- (RACChannelTerminal<NSNumber *> *)rac_newOnChannel;
@end
NS_ASSUME_NONNULL_END
