#import "BMGPUImageTiltShiftFilteri+BmBm.h"
@implementation BMGPUImageTiltShiftFilteri (BmBm)
+ (BOOL)GinitBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)XSetblurradiusinpixelsBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)tblurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)SSettopfocuslevelBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)GSetbottomfocuslevelBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)USetfocusfalloffrateBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
