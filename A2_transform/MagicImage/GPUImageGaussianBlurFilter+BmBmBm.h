#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageGaussianBlurFilter+Bm.h"
#import "GPUImageGaussianBlurFilter+BmBm.h"

@interface GPUImageGaussianBlurFilter (BmBmBm)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmBmBm:(NSInteger)BM;
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)vertexShaderForStandardBlurOfRadiusSigmaBmBmBm:(NSInteger)BM;
+ (BOOL)fragmentShaderForStandardBlurOfRadiusSigmaBmBmBm:(NSInteger)BM;
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBmBmBm:(NSInteger)BM;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBmBmBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBmBmBm:(NSInteger)BM;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBmBm:(NSInteger)BM;
+ (BOOL)switchToVertexShaderFragmentshaderBmBmBm:(NSInteger)BM;
+ (BOOL)setTexelSpacingMultiplierBmBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBmBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusAsFractionOfImageWidthBmBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusAsFractionOfImageHeightBmBmBm:(NSInteger)BM;

@end
