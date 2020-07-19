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
#import "GPUImageHarrisCornerDetectionFilter+BmBmBm.h"

@interface GPUImageHarrisCornerDetectionFilter (BmBmBm-Deletecomments)
+ (BOOL)initBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithCornerDetectionFragmentShaderBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)deallocBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)extractCornerLocationsFromImageAtFrameTimeBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)wantsMonochromeInputBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusInPixelsBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)blurRadiusInPixelsBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setSensitivityBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setThresholdBmBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)thresholdBmBmBm-Deletecomments:(NSInteger)-deleteComments;

@end
