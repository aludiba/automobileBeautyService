#import "UIBarButtonItem+RACCommandSupportBmBmBm-Deletecomments.h"
@implementation UIBarButtonItem (RACCommandSupportBmBmBm-Deletecomments)
+ (BOOL)rac_commandBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)setRac_commandBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}
+ (BOOL)rac_hijackActionAndTargetIfNeededBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)rac_commandPerformActionBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}

@end
