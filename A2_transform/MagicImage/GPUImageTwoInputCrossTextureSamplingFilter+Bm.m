#import "GPUImageTwoInputCrossTextureSamplingFilter+Bm.h"
@implementation GPUImageTwoInputCrossTextureSamplingFilter (Bm)
+ (BOOL)initWithFragmentShaderFromStringBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)setTexelWidthBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setTexelHeightBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
