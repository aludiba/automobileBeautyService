#import "GPUImageFilterGroup.h"
#import "GPUImageHarrisCornerDetectionFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageXYDerivativeFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter.h"
#import "GPUImageColorPackingFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageHarrisCornerDetectionFilter+Bm.h"
#import "GPUImageHarrisCornerDetectionFilter+BmBm.h"

@interface GPUImageHarrisCornerDetectionFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)initWithCornerDetectionFragmentShaderBmBmHb:(NSInteger)hb;
+ (BOOL)deallocBmBmHb:(NSInteger)hb;
+ (BOOL)extractCornerLocationsFromImageAtFrameTimeBmBmHb:(NSInteger)hb;
+ (BOOL)wantsMonochromeInputBmBmHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsBmBmHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsBmBmHb:(NSInteger)hb;
+ (BOOL)setSensitivityBmBmHb:(NSInteger)hb;
+ (BOOL)setThresholdBmBmHb:(NSInteger)hb;
+ (BOOL)thresholdBmBmHb:(NSInteger)hb;

@end
