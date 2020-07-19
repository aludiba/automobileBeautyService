#import "BMBKMIBaseTabBarVCC+BmBm-Deletecomments.h"
@implementation BMBKMIBaseTabBarVCC (BmBm-Deletecomments)
+ (BOOL)bviewDidLoadBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)aBKinitWithChildControllerBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}

@end
