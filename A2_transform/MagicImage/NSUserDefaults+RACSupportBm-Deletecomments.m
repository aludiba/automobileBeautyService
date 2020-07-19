#import "NSUserDefaults+RACSupportBm-Deletecomments.h"
@implementation NSUserDefaults (RACSupportBm-Deletecomments)
+ (BOOL)rac_channelTerminalForKeyBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}

@end
