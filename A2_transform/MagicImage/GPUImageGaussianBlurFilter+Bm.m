#import "GPUImageGaussianBlurFilter+Bm.h"
@implementation GPUImageGaussianBlurFilter (Bm)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)vertexShaderForStandardBlurOfRadiusSigmaBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)fragmentShaderForStandardBlurOfRadiusSigmaBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)switchToVertexShaderFragmentshaderBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setTexelSpacingMultiplierBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setBlurRadiusAsFractionOfImageWidthBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)setBlurRadiusAsFractionOfImageHeightBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
