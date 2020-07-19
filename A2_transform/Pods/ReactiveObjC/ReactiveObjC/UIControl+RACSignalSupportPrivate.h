#import <UIKit/UIKit.h>
@class RACChannelTerminal;
NS_ASSUME_NONNULL_BEGIN
@interface UIControl (RACSignalSupportPrivate)
- (RACChannelTerminal *)rac_channelForControlEvents:(UIControlEvents)controlEvents key:(NSString *)key nilValue:(nullable id)nilValue;
@end
NS_ASSUME_NONNULL_END
