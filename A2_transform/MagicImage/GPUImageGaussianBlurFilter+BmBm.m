#import "GPUImageGaussianBlurFilter+BmBm.h"
@implementation GPUImageGaussianBlurFilter (BmBm)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)vertexShaderForStandardBlurOfRadiusSigmaBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)fragmentShaderForStandardBlurOfRadiusSigmaBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)setupFilterForSizeBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)switchToVertexShaderFragmentshaderBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setTexelSpacingMultiplierBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)setBlurRadiusAsFractionOfImageWidthBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)setBlurRadiusAsFractionOfImageHeightBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
