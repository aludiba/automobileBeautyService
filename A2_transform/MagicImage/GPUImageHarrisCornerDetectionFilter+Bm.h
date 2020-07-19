#import "GPUImageFilterGroup.h"
#import "GPUImageHarrisCornerDetectionFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageXYDerivativeFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter.h"
#import "GPUImageColorPackingFilter.h"
#import "GPUImageGaussianBlurFilter.h"

@interface GPUImageHarrisCornerDetectionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithCornerDetectionFragmentShaderBm:(NSInteger)BM;
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)extractCornerLocationsFromImageAtFrameTimeBm:(NSInteger)BM;
+ (BOOL)wantsMonochromeInputBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBm:(NSInteger)BM;
+ (BOOL)setSensitivityBm:(NSInteger)BM;
+ (BOOL)setThresholdBm:(NSInteger)BM;
+ (BOOL)thresholdBm:(NSInteger)BM;

@end
