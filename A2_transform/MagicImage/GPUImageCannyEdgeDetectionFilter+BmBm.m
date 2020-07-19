#import "GPUImageCannyEdgeDetectionFilter+BmBm.h"
@implementation GPUImageCannyEdgeDetectionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setBlurTexelSpacingMultiplierBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)blurTexelSpacingMultiplierBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setTexelWidthBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)texelWidthBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setTexelHeightBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)texelHeightBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setUpperThresholdBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)upperThresholdBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setLowerThresholdBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)lowerThresholdBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
