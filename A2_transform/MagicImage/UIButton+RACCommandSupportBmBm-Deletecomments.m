#import "UIButton+RACCommandSupportBmBm-Deletecomments.h"
@implementation UIButton (RACCommandSupportBmBm-Deletecomments)
+ (BOOL)rac_commandBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}
+ (BOOL)setRac_commandBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}
+ (BOOL)rac_hijackActionAndTargetIfNeededBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}
+ (BOOL)rac_commandPerformActionBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}

@end
