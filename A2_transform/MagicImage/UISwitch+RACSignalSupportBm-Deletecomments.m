#import "UISwitch+RACSignalSupportBm-Deletecomments.h"
@implementation UISwitch (RACSignalSupportBm-Deletecomments)
+ (BOOL)rac_newOnChannelBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}

@end
