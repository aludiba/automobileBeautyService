#import "GPUImageFilterGroup.h"
#import "GPUImageHarrisCornerDetectionFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageXYDerivativeFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter.h"
#import "GPUImageColorPackingFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageHarrisCornerDetectionFilter+Bm.h"

@interface GPUImageHarrisCornerDetectionFilter (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)initWithCornerDetectionFragmentShaderBmHb:(NSInteger)hb;
+ (BOOL)deallocBmHb:(NSInteger)hb;
+ (BOOL)extractCornerLocationsFromImageAtFrameTimeBmHb:(NSInteger)hb;
+ (BOOL)wantsMonochromeInputBmHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsBmHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsBmHb:(NSInteger)hb;
+ (BOOL)setSensitivityBmHb:(NSInteger)hb;
+ (BOOL)setThresholdBmHb:(NSInteger)hb;
+ (BOOL)thresholdBmHb:(NSInteger)hb;

@end
