#import "BMQMBaseNavigationControllerQ+Bm-Deletecomments.h"
@implementation BMQMBaseNavigationControllerQ (Bm-Deletecomments)
+ (BOOL)hViewdidloadbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)iPrefersstatusbarhiddenbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}

@end
