#import "UIBarButtonItem+RACCommandSupportBmBm-Deletecomments.h"
@implementation UIBarButtonItem (RACCommandSupportBmBm-Deletecomments)
+ (BOOL)rac_commandBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)setRac_commandBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 34 == 0;
}
+ (BOOL)rac_hijackActionAndTargetIfNeededBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}
+ (BOOL)rac_commandPerformActionBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}

@end
