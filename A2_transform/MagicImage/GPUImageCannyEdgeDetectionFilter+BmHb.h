#import "GPUImageFilterGroup.h"
#import "GPUImageCannyEdgeDetectionFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageDirectionalSobelEdgeDetectionFilter.h"
#import "GPUImageDirectionalNonMaximumSuppressionFilter.h"
#import "GPUImageWeakPixelInclusionFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter.h"
#import "GPUImageCannyEdgeDetectionFilter+Bm.h"

@interface GPUImageCannyEdgeDetectionFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsBmHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsBmHb:(NSInteger)hb;
+ (BOOL)setBlurTexelSpacingMultiplierBmHb:(NSInteger)hb;
+ (BOOL)blurTexelSpacingMultiplierBmHb:(NSInteger)hb;
+ (BOOL)setTexelWidthBmHb:(NSInteger)hb;
+ (BOOL)texelWidthBmHb:(NSInteger)hb;
+ (BOOL)setTexelHeightBmHb:(NSInteger)hb;
+ (BOOL)texelHeightBmHb:(NSInteger)hb;
+ (BOOL)setUpperThresholdBmHb:(NSInteger)hb;
+ (BOOL)upperThresholdBmHb:(NSInteger)hb;
+ (BOOL)setLowerThresholdBmHb:(NSInteger)hb;
+ (BOOL)lowerThresholdBmHb:(NSInteger)hb;

@end
