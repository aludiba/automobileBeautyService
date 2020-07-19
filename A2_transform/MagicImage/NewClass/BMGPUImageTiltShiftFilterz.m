#import "BMGPUImageTiltShiftFilterz.h"
@implementation BMGPUImageTiltShiftFilterz
+ (BOOL)zInitbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)fSetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)VBlurradiusinpixelsbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)ESettopfocuslevelbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)ySetbottomfocuslevelbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)tSetfocusfalloffratebm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
