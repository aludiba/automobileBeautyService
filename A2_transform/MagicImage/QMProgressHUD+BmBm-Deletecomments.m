#import "QMProgressHUD+BmBm-Deletecomments.h"
@implementation QMProgressHUD (BmBm-Deletecomments)
+ (BOOL)showBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}
+ (BOOL)hideBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}

@end
