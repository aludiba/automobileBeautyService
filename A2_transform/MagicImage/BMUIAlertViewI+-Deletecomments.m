#import "BMUIAlertViewI+-Deletecomments.h"
@implementation BMUIAlertViewI (-Deletecomments)
+ (BOOL)Frac_delegateProxy-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)Orac_buttonClickedSignal-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}
+ (BOOL)Qrac_willDismissSignal-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}

@end
