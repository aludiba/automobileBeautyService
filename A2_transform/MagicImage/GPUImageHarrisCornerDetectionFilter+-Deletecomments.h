#import "GPUImageFilterGroup.h"
#import "GPUImageHarrisCornerDetectionFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageXYDerivativeFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter.h"
#import "GPUImageColorPackingFilter.h"
#import "GPUImageGaussianBlurFilter.h"

@interface GPUImageHarrisCornerDetectionFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithCornerDetectionFragmentShader-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)dealloc-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)extractCornerLocationsFromImageAtFrameTime-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)wantsMonochromeInput-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusInPixels-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)blurRadiusInPixels-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setSensitivity-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setThreshold-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)threshold-Deletecomments:(NSInteger)-deleteComments;

@end
