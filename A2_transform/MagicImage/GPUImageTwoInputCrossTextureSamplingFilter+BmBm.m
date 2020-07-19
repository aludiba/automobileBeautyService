#import "GPUImageTwoInputCrossTextureSamplingFilter+BmBm.h"
@implementation GPUImageTwoInputCrossTextureSamplingFilter (BmBm)
+ (BOOL)initWithFragmentShaderFromStringBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setupFilterForSizeBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setTexelWidthBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setTexelHeightBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
