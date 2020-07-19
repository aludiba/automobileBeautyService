#import "BMGPUImageTiltShiftFiltert.h"
@implementation BMGPUImageTiltShiftFiltert
+ (BOOL)Jinit:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)fSetblurradiusinpixels:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)TblurRadiusInPixels:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)NSettopfocuslevel:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)NSetbottomfocuslevel:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)ySetfocusfalloffrate:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
