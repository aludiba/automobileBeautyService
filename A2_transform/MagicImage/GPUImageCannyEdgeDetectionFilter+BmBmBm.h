#import "GPUImageFilterGroup.h"
#import "GPUImageCannyEdgeDetectionFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageDirectionalSobelEdgeDetectionFilter.h"
#import "GPUImageDirectionalNonMaximumSuppressionFilter.h"
#import "GPUImageWeakPixelInclusionFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter.h"
#import "GPUImageCannyEdgeDetectionFilter+Bm.h"
#import "GPUImageCannyEdgeDetectionFilter+BmBm.h"

@interface GPUImageCannyEdgeDetectionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBmBmBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBmBmBm:(NSInteger)BM;
+ (BOOL)setBlurTexelSpacingMultiplierBmBmBm:(NSInteger)BM;
+ (BOOL)blurTexelSpacingMultiplierBmBmBm:(NSInteger)BM;
+ (BOOL)setTexelWidthBmBmBm:(NSInteger)BM;
+ (BOOL)texelWidthBmBmBm:(NSInteger)BM;
+ (BOOL)setTexelHeightBmBmBm:(NSInteger)BM;
+ (BOOL)texelHeightBmBmBm:(NSInteger)BM;
+ (BOOL)setUpperThresholdBmBmBm:(NSInteger)BM;
+ (BOOL)upperThresholdBmBmBm:(NSInteger)BM;
+ (BOOL)setLowerThresholdBmBmBm:(NSInteger)BM;
+ (BOOL)lowerThresholdBmBmBm:(NSInteger)BM;

@end
