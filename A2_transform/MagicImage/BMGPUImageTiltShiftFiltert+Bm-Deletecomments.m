#import "BMGPUImageTiltShiftFiltert+Bm-Deletecomments.h"
@implementation BMGPUImageTiltShiftFiltert (Bm-Deletecomments)
+ (BOOL)JinitBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}
+ (BOOL)fSetblurradiusinpixelsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 7 == 0;
}
+ (BOOL)TblurRadiusInPixelsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 42 == 0;
}
+ (BOOL)NSettopfocuslevelBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}
+ (BOOL)NSetbottomfocuslevelBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}
+ (BOOL)ySetfocusfalloffrateBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}

@end
