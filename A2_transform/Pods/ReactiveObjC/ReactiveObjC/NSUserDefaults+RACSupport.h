#import <Foundation/Foundation.h>
@class RACChannelTerminal;
NS_ASSUME_NONNULL_BEGIN
@interface NSUserDefaults (RACSupport)
- (RACChannelTerminal *)rac_channelTerminalForKey:(NSString *)key;
@end
NS_ASSUME_NONNULL_END
