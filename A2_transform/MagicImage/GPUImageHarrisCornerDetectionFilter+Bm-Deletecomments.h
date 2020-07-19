#import "GPUImageFilterGroup.h"
#import "GPUImageHarrisCornerDetectionFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageXYDerivativeFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter.h"
#import "GPUImageColorPackingFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageHarrisCornerDetectionFilter+Bm.h"

@interface GPUImageHarrisCornerDetectionFilter (Bm-Deletecomments)
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithCornerDetectionFragmentShaderBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)deallocBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)extractCornerLocationsFromImageAtFrameTimeBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)wantsMonochromeInputBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusInPixelsBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)blurRadiusInPixelsBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setSensitivityBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setThresholdBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)thresholdBm-Deletecomments:(NSInteger)-deleteComments;

@end
