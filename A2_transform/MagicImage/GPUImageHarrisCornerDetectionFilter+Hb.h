#import "GPUImageFilterGroup.h"
#import "GPUImageHarrisCornerDetectionFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageXYDerivativeFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter.h"
#import "GPUImageColorPackingFilter.h"
#import "GPUImageGaussianBlurFilter.h"

@interface GPUImageHarrisCornerDetectionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithCornerDetectionFragmentShaderHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)extractCornerLocationsFromImageAtFrameTimeHb:(NSInteger)hb;
+ (BOOL)wantsMonochromeInputHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsHb:(NSInteger)hb;
+ (BOOL)setSensitivityHb:(NSInteger)hb;
+ (BOOL)setThresholdHb:(NSInteger)hb;
+ (BOOL)thresholdHb:(NSInteger)hb;

@end
