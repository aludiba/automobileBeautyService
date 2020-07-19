#import "BMTOCropViewControllerTransitioningR+Bm-Deletecomments.h"
@implementation BMTOCropViewControllerTransitioningR (Bm-Deletecomments)
+ (BOOL)QTransitiondurationbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}
+ (BOOL)KAnimatetransitionbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}
+ (BOOL)CResetbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}

@end
