#import "BMGPUImageGaussianSelectiveBlurFilterg+Bm.h"
@implementation BMGPUImageGaussianSelectiveBlurFilterg (Bm)
+ (BOOL)yinitBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)sSetinputsizeEAtindexBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)gSetblurradiusinpixelsBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)LblurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)VSetexcludecirclepointBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)mSetexcludecircleradiusBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)VSetexcludeblursizeBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)WSetaspectratioBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
