#import "GPUImageFilterGroup.h"
#import "GPUImageCannyEdgeDetectionFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageDirectionalSobelEdgeDetectionFilter.h"
#import "GPUImageDirectionalNonMaximumSuppressionFilter.h"
#import "GPUImageWeakPixelInclusionFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter.h"
#import "GPUImageCannyEdgeDetectionFilter+Bm.h"

@interface GPUImageCannyEdgeDetectionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBmBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBmBm:(NSInteger)BM;
+ (BOOL)setBlurTexelSpacingMultiplierBmBm:(NSInteger)BM;
+ (BOOL)blurTexelSpacingMultiplierBmBm:(NSInteger)BM;
+ (BOOL)setTexelWidthBmBm:(NSInteger)BM;
+ (BOOL)texelWidthBmBm:(NSInteger)BM;
+ (BOOL)setTexelHeightBmBm:(NSInteger)BM;
+ (BOOL)texelHeightBmBm:(NSInteger)BM;
+ (BOOL)setUpperThresholdBmBm:(NSInteger)BM;
+ (BOOL)upperThresholdBmBm:(NSInteger)BM;
+ (BOOL)setLowerThresholdBmBm:(NSInteger)BM;
+ (BOOL)lowerThresholdBmBm:(NSInteger)BM;

@end
