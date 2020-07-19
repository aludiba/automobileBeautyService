#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageGaussianBlurFilter.h"

@interface GPUImageGaussianBlurFilter (Hb)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)vertexShaderForStandardBlurOfRadiusSigmaHb:(NSInteger)hb;
+ (BOOL)fragmentShaderForStandardBlurOfRadiusSigmaHb:(NSInteger)hb;
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaHb:(NSInteger)hb;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb;
+ (BOOL)switchToVertexShaderFragmentshaderHb:(NSInteger)hb;
+ (BOOL)setTexelSpacingMultiplierHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusAsFractionOfImageWidthHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusAsFractionOfImageHeightHb:(NSInteger)hb;

@end
