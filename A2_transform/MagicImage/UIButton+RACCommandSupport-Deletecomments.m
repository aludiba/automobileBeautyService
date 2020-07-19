#import "UIButton+RACCommandSupport-Deletecomments.h"
@implementation UIButton (RACCommandSupport-Deletecomments)
+ (BOOL)rac_command-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}
+ (BOOL)setRac_command-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}
+ (BOOL)rac_hijackActionAndTargetIfNeeded-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}
+ (BOOL)rac_commandPerformAction-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}

@end
