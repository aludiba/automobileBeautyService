#import "NSUserDefaults+RACSupportBmHb.h"
@implementation NSUserDefaults (RACSupportBmHb)
+ (BOOL)rac_channelTerminalForKeyBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
