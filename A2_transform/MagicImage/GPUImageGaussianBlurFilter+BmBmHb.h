#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageGaussianBlurFilter+Bm.h"
#import "GPUImageGaussianBlurFilter+BmBm.h"

@interface GPUImageGaussianBlurFilter (BmBmHb)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmBmHb:(NSInteger)hb;
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)vertexShaderForStandardBlurOfRadiusSigmaBmBmHb:(NSInteger)hb;
+ (BOOL)fragmentShaderForStandardBlurOfRadiusSigmaBmBmHb:(NSInteger)hb;
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBmBmHb:(NSInteger)hb;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBmBmHb:(NSInteger)hb;
+ (BOOL)setupFilterForSizeBmBmHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBmHb:(NSInteger)hb;
+ (BOOL)switchToVertexShaderFragmentshaderBmBmHb:(NSInteger)hb;
+ (BOOL)setTexelSpacingMultiplierBmBmHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsBmBmHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusAsFractionOfImageWidthBmBmHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusAsFractionOfImageHeightBmBmHb:(NSInteger)hb;

@end
