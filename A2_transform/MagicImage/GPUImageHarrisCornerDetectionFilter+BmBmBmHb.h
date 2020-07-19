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
#import "GPUImageHarrisCornerDetectionFilter+BmBmBm.h"

@interface GPUImageHarrisCornerDetectionFilter (BmBmBmHb)
+ (BOOL)initBmBmBmHb:(NSInteger)hb;
+ (BOOL)initWithCornerDetectionFragmentShaderBmBmBmHb:(NSInteger)hb;
+ (BOOL)deallocBmBmBmHb:(NSInteger)hb;
+ (BOOL)extractCornerLocationsFromImageAtFrameTimeBmBmBmHb:(NSInteger)hb;
+ (BOOL)wantsMonochromeInputBmBmBmHb:(NSInteger)hb;
+ (BOOL)setBlurRadiusInPixelsBmBmBmHb:(NSInteger)hb;
+ (BOOL)blurRadiusInPixelsBmBmBmHb:(NSInteger)hb;
+ (BOOL)setSensitivityBmBmBmHb:(NSInteger)hb;
+ (BOOL)setThresholdBmBmBmHb:(NSInteger)hb;
+ (BOOL)thresholdBmBmBmHb:(NSInteger)hb;

@end
