#import "UITextField+RACSignalSupportBm-Deletecomments.h"
@implementation UITextField (RACSignalSupportBm-Deletecomments)
+ (BOOL)rac_textSignalBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}
+ (BOOL)rac_newTextChannelBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}

@end
