#import "GPUImageGaussianBlurFilter+Hb.h"
@implementation GPUImageGaussianBlurFilter (Hb)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)vertexShaderForStandardBlurOfRadiusSigmaHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)fragmentShaderForStandardBlurOfRadiusSigmaHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)switchToVertexShaderFragmentshaderHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)setTexelSpacingMultiplierHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)setBlurRadiusInPixelsHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)setBlurRadiusAsFractionOfImageWidthHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)setBlurRadiusAsFractionOfImageHeightHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
