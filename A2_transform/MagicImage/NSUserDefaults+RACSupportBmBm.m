#import "NSUserDefaults+RACSupportBmBm.h"
@implementation NSUserDefaults (RACSupportBmBm)
+ (BOOL)rac_channelTerminalForKeyBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
