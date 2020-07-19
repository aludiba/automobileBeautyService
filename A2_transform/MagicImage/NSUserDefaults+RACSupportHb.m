#import "NSUserDefaults+RACSupportHb.h"
@implementation NSUserDefaults (RACSupportHb)
+ (BOOL)rac_channelTerminalForKeyHb:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
