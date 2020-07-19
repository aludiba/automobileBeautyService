#import "BKMIBaseNavigationC+Bm-Deletecomments.h"
@implementation BKMIBaseNavigationC (Bm-Deletecomments)
+ (BOOL)viewDidLoadBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}
+ (BOOL)pushViewControllerAnimatedBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}
+ (BOOL)BKreturnCustomBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}

@end
