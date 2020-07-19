#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageGaussianBlurFilter+Bm.h"

@interface GPUImageGaussianBlurFilter (BmBm)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)vertexShaderForStandardBlurOfRadiusSigmaBmBm:(NSInteger)BM;
+ (BOOL)fragmentShaderForStandardBlurOfRadiusSigmaBmBm:(NSInteger)BM;
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBmBm:(NSInteger)BM;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBmBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBmBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm:(NSInteger)BM;
+ (BOOL)switchToVertexShaderFragmentshaderBmBm:(NSInteger)BM;
+ (BOOL)setTexelSpacingMultiplierBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusAsFractionOfImageWidthBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusAsFractionOfImageHeightBmBm:(NSInteger)BM;

@end
