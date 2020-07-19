#import "BMBMGPUImageTiltShiftFilteriK.h"
@implementation BMBMGPUImageTiltShiftFilteriK
+ (BOOL)zGinit:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)LXsetblurradiusinpixels:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)iTblurradiusinpixels:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)WSsettopfocuslevel:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)HGsetbottomfocuslevel:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)FUsetfocusfalloffrate:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
