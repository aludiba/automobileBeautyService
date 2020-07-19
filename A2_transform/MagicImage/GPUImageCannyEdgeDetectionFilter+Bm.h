#import "GPUImageFilterGroup.h"
#import "GPUImageCannyEdgeDetectionFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageDirectionalSobelEdgeDetectionFilter.h"
#import "GPUImageDirectionalNonMaximumSuppressionFilter.h"
#import "GPUImageWeakPixelInclusionFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter.h"

@interface GPUImageCannyEdgeDetectionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBm:(NSInteger)BM;
+ (BOOL)setBlurTexelSpacingMultiplierBm:(NSInteger)BM;
+ (BOOL)blurTexelSpacingMultiplierBm:(NSInteger)BM;
+ (BOOL)setTexelWidthBm:(NSInteger)BM;
+ (BOOL)texelWidthBm:(NSInteger)BM;
+ (BOOL)setTexelHeightBm:(NSInteger)BM;
+ (BOOL)texelHeightBm:(NSInteger)BM;
+ (BOOL)setUpperThresholdBm:(NSInteger)BM;
+ (BOOL)upperThresholdBm:(NSInteger)BM;
+ (BOOL)setLowerThresholdBm:(NSInteger)BM;
+ (BOOL)lowerThresholdBm:(NSInteger)BM;

@end
