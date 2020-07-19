#import "GPUImageCannyEdgeDetectionFilter+BmBmBm.h"
@implementation GPUImageCannyEdgeDetectionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)setBlurTexelSpacingMultiplierBmBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)blurTexelSpacingMultiplierBmBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)setTexelWidthBmBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)texelWidthBmBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setTexelHeightBmBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)texelHeightBmBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setUpperThresholdBmBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)upperThresholdBmBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)setLowerThresholdBmBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)lowerThresholdBmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
