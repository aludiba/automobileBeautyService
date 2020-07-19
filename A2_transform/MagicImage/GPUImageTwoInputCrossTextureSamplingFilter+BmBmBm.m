#import "GPUImageTwoInputCrossTextureSamplingFilter+BmBmBm.h"
@implementation GPUImageTwoInputCrossTextureSamplingFilter (BmBmBm)
+ (BOOL)initWithFragmentShaderFromStringBmBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)setupFilterForSizeBmBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)setTexelWidthBmBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)setTexelHeightBmBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
