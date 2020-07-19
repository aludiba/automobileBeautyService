#import "BKMIBaseTabBarVC+Bm-Deletecomments.h"
@implementation BKMIBaseTabBarVC (Bm-Deletecomments)
+ (BOOL)viewDidLoadBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)BKinitWithChildControllerBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}

@end
