#import "NSUserDefaults+RACSupport-Deletecomments.h"
@implementation NSUserDefaults (RACSupport-Deletecomments)
+ (BOOL)rac_channelTerminalForKey-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}

@end
