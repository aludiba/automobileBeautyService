#import "BMBMGPUImageTiltShiftFilteriq.h"
@implementation BMBMGPUImageTiltShiftFilteriq
+ (BOOL)kGinit:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)fXsetblurradiusinpixels:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)gTblurradiusinpixels:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)rSsettopfocuslevel:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)RGsetbottomfocuslevel:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)RUsetfocusfalloffrate:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
