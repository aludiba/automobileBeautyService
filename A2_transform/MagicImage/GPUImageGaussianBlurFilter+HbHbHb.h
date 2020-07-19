#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageGaussianBlurFilter+Hb.h"
#import "GPUImageGaussianBlurFilter+HbHb.h"

@interface GPUImageGaussianBlurFilter (HbHbHb)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringHbHbHb:(NSInteger)hb;
+ (BOOL)initHbHbHb:(NSInteger)hb;
+ (BOOL)vertexShaderForStandardBlurOfRadiusSigmaHbHbHb:(NSInteger)hb;
+ (BOOL)fragmentShaderForStandardBlurOfRadiusSigmaHbHbHb:(NSInteger)hb;
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaHbHbHb:(NSInteger)hb;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaHbHbHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeHbHbHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHbHbHb:(NSInteger)hb;
+ (BOOL)switchToVertexShaderFragmentshaderHbHbHb:(NSInteger)hb;
+ (BOOL)setTexelSpacingMultiplierHbHbHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsHbHbHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusAsFractionOfImageWidthHbHbHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusAsFractionOfImageHeightHbHbHb:(NSInteger)hb;

@end
