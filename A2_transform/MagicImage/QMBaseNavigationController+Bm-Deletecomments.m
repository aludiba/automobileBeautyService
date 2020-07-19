#import "QMBaseNavigationController+Bm-Deletecomments.h"
@implementation QMBaseNavigationController (Bm-Deletecomments)
+ (BOOL)viewDidLoadBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)prefersStatusBarHiddenBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}

@end
