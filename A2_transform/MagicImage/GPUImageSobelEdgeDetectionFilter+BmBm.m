#import "GPUImageSobelEdgeDetectionFilter+BmBm.h"
@implementation GPUImageSobelEdgeDetectionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)setupFilterForSizeBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setUniformsForProgramAtIndexBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)wantsMonochromeInputBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)providesMonochromeOutputBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setTexelWidthBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setTexelHeightBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)setEdgeStrengthBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
