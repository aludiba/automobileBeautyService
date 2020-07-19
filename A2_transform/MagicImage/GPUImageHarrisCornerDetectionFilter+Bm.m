#import "GPUImageHarrisCornerDetectionFilter+Bm.h"
@implementation GPUImageHarrisCornerDetectionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)initWithCornerDetectionFragmentShaderBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)extractCornerLocationsFromImageAtFrameTimeBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)wantsMonochromeInputBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)blurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)setSensitivityBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)setThresholdBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)thresholdBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
