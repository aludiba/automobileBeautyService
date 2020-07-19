#import "BMBMGPUImageTiltShiftFilteriV.h"
@implementation BMBMGPUImageTiltShiftFilteriV
+ (BOOL)jGinitbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)mXsetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)CTblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)JSsettopfocuslevelbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)PGsetbottomfocuslevelbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)YUsetfocusfalloffratebm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
