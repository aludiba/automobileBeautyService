#import "UIImage+RotateBm-Deletecomments.h"
@implementation UIImage (RotateBm-Deletecomments)
+ (BOOL)fixOrientationBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)rotateBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}
+ (BOOL)flipVerticalBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)flipHorizontalBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}
+ (BOOL)imageRotatedByRadiansBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}
+ (BOOL)imageRotatedByDegreesBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}

@end
