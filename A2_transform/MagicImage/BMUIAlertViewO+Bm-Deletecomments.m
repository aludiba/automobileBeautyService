#import "BMUIAlertViewO+Bm-Deletecomments.h"
@implementation BMUIAlertViewO (Bm-Deletecomments)
+ (BOOL)kRac_DelegateproxybmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}
+ (BOOL)eRac_ButtonclickedsignalbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}
+ (BOOL)SRac_WilldismisssignalbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 33 == 0;
}

@end
