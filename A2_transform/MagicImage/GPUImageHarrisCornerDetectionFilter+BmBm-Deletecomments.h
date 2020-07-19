#import "GPUImageFilterGroup.h"
#import "GPUImageHarrisCornerDetectionFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageXYDerivativeFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter.h"
#import "GPUImageColorPackingFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageHarrisCornerDetectionFilter+Bm.h"
#import "GPUImageHarrisCornerDetectionFilter+BmBm.h"

@interface GPUImageHarrisCornerDetectionFilter (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithCornerDetectionFragmentShaderBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)deallocBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)extractCornerLocationsFromImageAtFrameTimeBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)wantsMonochromeInputBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusInPixelsBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)blurRadiusInPixelsBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setSensitivityBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setThresholdBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)thresholdBmBm-Deletecomments:(NSInteger)-deleteComments;

@end
