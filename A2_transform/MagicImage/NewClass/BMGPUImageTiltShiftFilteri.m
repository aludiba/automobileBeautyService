#import "BMGPUImageTiltShiftFilteri.h"
@implementation BMGPUImageTiltShiftFilteri
+ (BOOL)Ginit:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)XSetblurradiusinpixels:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)tblurRadiusInPixels:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)SSettopfocuslevel:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)GSetbottomfocuslevel:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)USetfocusfalloffrate:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
