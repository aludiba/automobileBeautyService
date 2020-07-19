#import "UIScreen+YYAddBm-Deletecomments.h"
@implementation UIScreen (YYAddBm-Deletecomments)
+ (BOOL)screenScaleBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)currentBoundsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 47 == 0;
}
+ (BOOL)boundsForOrientationBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)sizeInPixelBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)pixelsPerInchBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}

@end
