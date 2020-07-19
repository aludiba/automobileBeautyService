#import "GPUImageHarrisCornerDetectionFilter+BmBm.h"
@implementation GPUImageHarrisCornerDetectionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)initWithCornerDetectionFragmentShaderBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)extractCornerLocationsFromImageAtFrameTimeBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)wantsMonochromeInputBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setSensitivityBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)setThresholdBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)thresholdBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
