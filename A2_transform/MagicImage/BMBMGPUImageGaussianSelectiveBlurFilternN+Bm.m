#import "BMBMGPUImageGaussianSelectiveBlurFilternN+Bm.h"
@implementation BMBMGPUImageGaussianSelectiveBlurFilternN (Bm)
+ (BOOL)HPinitBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)zJsetinputsizecatindexBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)NAsetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)QTblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)qXsetexcludecirclepointBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)CEsetexcludecircleradiusBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)yRsetexcludeblursizeBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)kDsetaspectratioBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
