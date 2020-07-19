#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageGaussianBlurFilter+Bm.h"
#import "GPUImageGaussianBlurFilter+BmBm.h"

@interface GPUImageGaussianBlurFilter (BmBm-Deletecomments)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstringBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)vertexShaderForStandardBlurOfRadiusSigmaBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)fragmentShaderForStandardBlurOfRadiusSigmaBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setupFilterForSizeBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)switchToVertexShaderFragmentshaderBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setTexelSpacingMultiplierBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusInPixelsBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusAsFractionOfImageWidthBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusAsFractionOfImageHeightBmBm-Deletecomments:(NSInteger)-deleteComments;

@end
