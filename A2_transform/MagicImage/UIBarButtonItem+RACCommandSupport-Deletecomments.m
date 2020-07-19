#import "UIBarButtonItem+RACCommandSupport-Deletecomments.h"
@implementation UIBarButtonItem (RACCommandSupport-Deletecomments)
+ (BOOL)rac_command-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}
+ (BOOL)setRac_command-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 33 == 0;
}
+ (BOOL)rac_hijackActionAndTargetIfNeeded-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)rac_commandPerformAction-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 39 == 0;
}

@end
