#import "BMBMGPUImageGaussianSelectiveBlurFiltergA.h"
@implementation BMBMGPUImageGaussianSelectiveBlurFiltergA
+ (BOOL)TYinit:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)KSsetinputsizeeatindex:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)pGsetblurradiusinpixels:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)gLblurradiusinpixels:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)zVsetexcludecirclepoint:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)vMsetexcludecircleradius:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)uVsetexcludeblursize:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)FWsetaspectratio:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
