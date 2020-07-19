#import "GPUImage3x3TextureSamplingFilter+Bm.h"
@implementation GPUImage3x3TextureSamplingFilter (Bm)
+ (BOOL)initWithVertexShaderFromStringFragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)setTexelWidthBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setTexelHeightBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
