#import "GPUImageFilterGroup.h"
#import "GPUImageCannyEdgeDetectionFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageDirectionalSobelEdgeDetectionFilter.h"
#import "GPUImageDirectionalNonMaximumSuppressionFilter.h"
#import "GPUImageWeakPixelInclusionFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter.h"
#import "GPUImageCannyEdgeDetectionFilter+Bm.h"
#import "GPUImageCannyEdgeDetectionFilter+BmBm.h"

@interface GPUImageCannyEdgeDetectionFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsBmBmHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsBmBmHb:(NSInteger)hb;
+ (BOOL)setBlurTexelSpacingMultiplierBmBmHb:(NSInteger)hb;
+ (BOOL)blurTexelSpacingMultiplierBmBmHb:(NSInteger)hb;
+ (BOOL)setTexelWidthBmBmHb:(NSInteger)hb;
+ (BOOL)texelWidthBmBmHb:(NSInteger)hb;
+ (BOOL)setTexelHeightBmBmHb:(NSInteger)hb;
+ (BOOL)texelHeightBmBmHb:(NSInteger)hb;
+ (BOOL)setUpperThresholdBmBmHb:(NSInteger)hb;
+ (BOOL)upperThresholdBmBmHb:(NSInteger)hb;
+ (BOOL)setLowerThresholdBmBmHb:(NSInteger)hb;
+ (BOOL)lowerThresholdBmBmHb:(NSInteger)hb;

@end
