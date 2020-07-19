#import "GPUImageGaussianBlurFilter+HbHb.h"
@implementation GPUImageGaussianBlurFilter (HbHb)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringHbHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)vertexShaderForStandardBlurOfRadiusSigmaHbHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)fragmentShaderForStandardBlurOfRadiusSigmaHbHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaHbHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaHbHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)setupFilterForSizeHbHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHbHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)switchToVertexShaderFragmentshaderHbHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)setTexelSpacingMultiplierHbHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)setBlurRadiusInPixelsHbHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)setBlurRadiusAsFractionOfImageWidthHbHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)setBlurRadiusAsFractionOfImageHeightHbHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
