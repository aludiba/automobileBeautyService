#import "GPUImageFilterGroup.h"
#import "GPUImageCannyEdgeDetectionFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageDirectionalSobelEdgeDetectionFilter.h"
#import "GPUImageDirectionalNonMaximumSuppressionFilter.h"
#import "GPUImageWeakPixelInclusionFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter.h"

@interface GPUImageCannyEdgeDetectionFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurRadiusInPixels-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)blurRadiusInPixels-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setBlurTexelSpacingMultiplier-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)blurTexelSpacingMultiplier-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setTexelWidth-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)texelWidth-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setTexelHeight-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)texelHeight-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setUpperThreshold-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)upperThreshold-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setLowerThreshold-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)lowerThreshold-Deletecomments:(NSInteger)-deleteComments;

@end
