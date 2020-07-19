#import "BMGPUImageTiltShiftFilteri+Bm.h"
@implementation BMGPUImageTiltShiftFilteri (Bm)
+ (BOOL)GinitBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)XSetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)tblurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)SSettopfocuslevelBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)GSetbottomfocuslevelBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)USetfocusfalloffrateBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
