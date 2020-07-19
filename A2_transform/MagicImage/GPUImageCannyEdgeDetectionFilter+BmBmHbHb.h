#import "GPUImageFilterGroup.h"
#import "GPUImageCannyEdgeDetectionFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageDirectionalSobelEdgeDetectionFilter.h"
#import "GPUImageDirectionalNonMaximumSuppressionFilter.h"
#import "GPUImageWeakPixelInclusionFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter.h"
#import "GPUImageCannyEdgeDetectionFilter+Bm.h"
#import "GPUImageCannyEdgeDetectionFilter+BmBm.h"
#import "GPUImageCannyEdgeDetectionFilter+BmBmHb.h"

@interface GPUImageCannyEdgeDetectionFilter (BmBmHbHb)
+ (BOOL)initBmBmHbHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsBmBmHbHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsBmBmHbHb:(NSInteger)hb;
+ (BOOL)setBlurTexelSpacingMultiplierBmBmHbHb:(NSInteger)hb;
+ (BOOL)blurTexelSpacingMultiplierBmBmHbHb:(NSInteger)hb;
+ (BOOL)setTexelWidthBmBmHbHb:(NSInteger)hb;
+ (BOOL)texelWidthBmBmHbHb:(NSInteger)hb;
+ (BOOL)setTexelHeightBmBmHbHb:(NSInteger)hb;
+ (BOOL)texelHeightBmBmHbHb:(NSInteger)hb;
+ (BOOL)setUpperThresholdBmBmHbHb:(NSInteger)hb;
+ (BOOL)upperThresholdBmBmHbHb:(NSInteger)hb;
+ (BOOL)setLowerThresholdBmBmHbHb:(NSInteger)hb;
+ (BOOL)lowerThresholdBmBmHbHb:(NSInteger)hb;

@end
