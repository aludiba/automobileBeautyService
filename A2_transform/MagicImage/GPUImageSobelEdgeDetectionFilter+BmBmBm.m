#import "GPUImageSobelEdgeDetectionFilter+BmBmBm.h"
@implementation GPUImageSobelEdgeDetectionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringBmBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)setupFilterForSizeBmBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)setUniformsForProgramAtIndexBmBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)wantsMonochromeInputBmBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)providesMonochromeOutputBmBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setTexelWidthBmBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setTexelHeightBmBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setEdgeStrengthBmBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
