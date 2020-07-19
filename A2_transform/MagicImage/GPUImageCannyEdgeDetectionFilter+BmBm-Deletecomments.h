#import "GPUImageFilterGroup.h"
#import "GPUImageCannyEdgeDetectionFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageDirectionalSobelEdgeDetectionFilter.h"
#import "GPUImageDirectionalNonMaximumSuppressionFilter.h"
#import "GPUImageWeakPixelInclusionFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter.h"
#import "GPUImageCannyEdgeDetectionFilter+Bm.h"
#import "GPUImageCannyEdgeDetectionFilter+BmBm.h"

@interface GPUImageCannyEdgeDetectionFilter (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusInPixelsBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)blurRadiusInPixelsBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurTexelSpacingMultiplierBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)blurTexelSpacingMultiplierBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setTexelWidthBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)texelWidthBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setTexelHeightBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)texelHeightBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setUpperThresholdBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)upperThresholdBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setLowerThresholdBmBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)lowerThresholdBmBm-Deletecomments:(NSInteger)-deleteComments;

@end
