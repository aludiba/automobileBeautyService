#import "BMGPUImageTiltShiftFiltert+Bm.h"
@implementation BMGPUImageTiltShiftFiltert (Bm)
+ (BOOL)JinitBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)fSetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)TblurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)NSettopfocuslevelBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)NSetbottomfocuslevelBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)ySetfocusfalloffrateBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
