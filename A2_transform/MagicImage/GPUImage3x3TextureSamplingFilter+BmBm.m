#import "GPUImage3x3TextureSamplingFilter+BmBm.h"
@implementation GPUImage3x3TextureSamplingFilter (BmBm)
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)setupFilterForSizeBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)setTexelWidthBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setTexelHeightBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
