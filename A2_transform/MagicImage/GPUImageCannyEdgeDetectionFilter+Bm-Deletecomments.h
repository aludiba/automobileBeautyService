#import "GPUImageFilterGroup.h"
#import "GPUImageCannyEdgeDetectionFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageDirectionalSobelEdgeDetectionFilter.h"
#import "GPUImageDirectionalNonMaximumSuppressionFilter.h"
#import "GPUImageWeakPixelInclusionFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter.h"
#import "GPUImageCannyEdgeDetectionFilter+Bm.h"

@interface GPUImageCannyEdgeDetectionFilter (Bm-Deletecomments)
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusInPixelsBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)blurRadiusInPixelsBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurTexelSpacingMultiplierBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)blurTexelSpacingMultiplierBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setTexelWidthBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)texelWidthBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setTexelHeightBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)texelHeightBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setUpperThresholdBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)upperThresholdBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setLowerThresholdBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)lowerThresholdBm-Deletecomments:(NSInteger)-deleteComments;

@end
