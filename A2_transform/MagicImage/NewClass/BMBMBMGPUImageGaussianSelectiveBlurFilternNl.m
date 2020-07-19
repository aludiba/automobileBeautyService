#import "BMBMBMGPUImageGaussianSelectiveBlurFilternNl.h"
@implementation BMBMBMGPUImageGaussianSelectiveBlurFilternNl
+ (BOOL)MHpinit:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)tZjsetinputsizecatindex:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)hNasetblurradiusinpixels:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)tQtblurradiusinpixels:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)BQxsetexcludecirclepoint:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)xCesetexcludecircleradius:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)wYrsetexcludeblursize:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)RKdsetaspectratio:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
