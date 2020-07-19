#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageGaussianBlurFilter+Hb.h"

@interface GPUImageGaussianBlurFilter (HbHb)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringHbHb:(NSInteger)hb;
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)vertexShaderForStandardBlurOfRadiusSigmaHbHb:(NSInteger)hb;
+ (BOOL)fragmentShaderForStandardBlurOfRadiusSigmaHbHb:(NSInteger)hb;
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaHbHb:(NSInteger)hb;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaHbHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeHbHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHbHb:(NSInteger)hb;
+ (BOOL)switchToVertexShaderFragmentshaderHbHb:(NSInteger)hb;
+ (BOOL)setTexelSpacingMultiplierHbHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsHbHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusAsFractionOfImageWidthHbHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusAsFractionOfImageHeightHbHb:(NSInteger)hb;

@end
