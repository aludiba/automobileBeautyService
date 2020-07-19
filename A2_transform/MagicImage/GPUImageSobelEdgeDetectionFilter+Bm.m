#import "GPUImageSobelEdgeDetectionFilter+Bm.h"
@implementation GPUImageSobelEdgeDetectionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)setUniformsForProgramAtIndexBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)wantsMonochromeInputBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)providesMonochromeOutputBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)setTexelWidthBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setTexelHeightBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)setEdgeStrengthBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
