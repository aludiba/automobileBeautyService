#import "UIButton+RACCommandSupportBm-Deletecomments.h"
@implementation UIButton (RACCommandSupportBm-Deletecomments)
+ (BOOL)rac_commandBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}
+ (BOOL)setRac_commandBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)rac_hijackActionAndTargetIfNeededBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)rac_commandPerformActionBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}

@end
