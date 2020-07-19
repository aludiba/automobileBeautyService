#import "GPUImageCannyEdgeDetectionFilter+Bm.h"
@implementation GPUImageCannyEdgeDetectionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)blurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)setBlurTexelSpacingMultiplierBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)blurTexelSpacingMultiplierBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setTexelWidthBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)texelWidthBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)setTexelHeightBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)texelHeightBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setUpperThresholdBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)upperThresholdBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)setLowerThresholdBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)lowerThresholdBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
