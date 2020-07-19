#import "UIAlertView+RACSignalSupportBmBm-Deletecomments.h"
@implementation UIAlertView (RACSignalSupportBmBm-Deletecomments)
+ (BOOL)rac_delegateProxyBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)rac_buttonClickedSignalBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)rac_willDismissSignalBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}

@end
