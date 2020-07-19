#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageGaussianBlurFilter.h"

@interface GPUImageGaussianBlurFilter (-Deletecomments)
+ (BOOL)initWithFirstStageVertexShaderFromStringFirststagefragmentshaderfromstringSecondstagevertexshaderfromstringSecondstagefragmentshaderfromstring-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)vertexShaderForStandardBlurOfRadiusSigma-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)fragmentShaderForStandardBlurOfRadiusSigma-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigma-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigma-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setupFilterForSize-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)renderToTextureWithVerticesTexturecoordinates-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)switchToVertexShaderFragmentshader-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setTexelSpacingMultiplier-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusInPixels-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusAsFractionOfImageWidth-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusAsFractionOfImageHeight-Deletecomments:(NSInteger)-deleteComments;

@end
