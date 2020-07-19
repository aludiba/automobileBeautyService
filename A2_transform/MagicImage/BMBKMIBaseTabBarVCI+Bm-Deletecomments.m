#import "BMBKMIBaseTabBarVCI+Bm-Deletecomments.h"
@implementation BMBKMIBaseTabBarVCI (Bm-Deletecomments)
+ (BOOL)RViewdidloadbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}
+ (BOOL)gBkinitwithchildcontrollerbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}

@end
