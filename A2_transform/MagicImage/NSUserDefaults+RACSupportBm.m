#import "NSUserDefaults+RACSupportBm.h"
@implementation NSUserDefaults (RACSupportBm)
+ (BOOL)rac_channelTerminalForKeyBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
