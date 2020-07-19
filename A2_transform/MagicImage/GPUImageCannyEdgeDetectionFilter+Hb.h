#import "GPUImageFilterGroup.h"
#import "GPUImageCannyEdgeDetectionFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageDirectionalSobelEdgeDetectionFilter.h"
#import "GPUImageDirectionalNonMaximumSuppressionFilter.h"
#import "GPUImageWeakPixelInclusionFilter.h"
#import "GPUImageSingleComponentGaussianBlurFilter.h"

@interface GPUImageCannyEdgeDetectionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsHb:(NSInteger)hb;
+ (BOOL)setBlurTexelSpacingMultiplierHb:(NSInteger)hb;
+ (BOOL)blurTexelSpacingMultiplierHb:(NSInteger)hb;
+ (BOOL)setTexelWidthHb:(NSInteger)hb;
+ (BOOL)texelWidthHb:(NSInteger)hb;
+ (BOOL)setTexelHeightHb:(NSInteger)hb;
+ (BOOL)texelHeightHb:(NSInteger)hb;
+ (BOOL)setUpperThresholdHb:(NSInteger)hb;
+ (BOOL)upperThresholdHb:(NSInteger)hb;
+ (BOOL)setLowerThresholdHb:(NSInteger)hb;
+ (BOOL)lowerThresholdHb:(NSInteger)hb;

@end
