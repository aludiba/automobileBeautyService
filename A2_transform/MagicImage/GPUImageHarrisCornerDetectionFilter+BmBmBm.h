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

@interface GPUImageHarrisCornerDetectionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)initWithCornerDetectionFragmentShaderBmBmBm:(NSInteger)BM;
+ (BOOL)deallocBmBmBm:(NSInteger)BM;
+ (BOOL)extractCornerLocationsFromImageAtFrameTimeBmBmBm:(NSInteger)BM;
+ (BOOL)wantsMonochromeInputBmBmBm:(NSInteger)BM;
+ (BOOL)setBlurRadiusInPixelsBmBmBm:(NSInteger)BM;
+ (BOOL)blurRadiusInPixelsBmBmBm:(NSInteger)BM;
+ (BOOL)setSensitivityBmBmBm:(NSInteger)BM;
+ (BOOL)setThresholdBmBmBm:(NSInteger)BM;
+ (BOOL)thresholdBmBmBm:(NSInteger)BM;

@end
