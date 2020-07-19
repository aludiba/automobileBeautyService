#import "UITextField+RACSignalSupportBmBmBm-Deletecomments.h"
@implementation UITextField (RACSignalSupportBmBmBm-Deletecomments)
+ (BOOL)rac_textSignalBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}
+ (BOOL)rac_newTextChannelBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}

@end
