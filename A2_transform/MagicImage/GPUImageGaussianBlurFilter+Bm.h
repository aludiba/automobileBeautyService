#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageGaussianBlurFilter.h"

@interface GPUImageGaussianBlurFilter (Bm)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)vertexShaderForStandardBlurOfRadiusSigmaBm:(NSInteger)BM;
+ (BOOL)fragmentShaderForStandardBlurOfRadiusSigmaBm:(NSInteger)BM;
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBm:(NSInteger)BM;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm:(NSInteger)BM;
+ (BOOL)switchToVertexShaderFragmentshaderBm:(NSInteger)BM;
+ (BOOL)setTexelSpacingMultiplierBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusAsFractionOfImageWidthBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusAsFractionOfImageHeightBm:(NSInteger)BM;

@end
