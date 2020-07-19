#import "BMBMGPUImageGaussianSelectiveBlurFilternN.h"
@implementation BMBMGPUImageGaussianSelectiveBlurFilternN
+ (BOOL)HPinit:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)zJsetinputsizecatindex:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)NAsetblurradiusinpixels:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)QTblurradiusinpixels:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)qXsetexcludecirclepoint:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)CEsetexcludecircleradius:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)yRsetexcludeblursize:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)kDsetaspectratio:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
