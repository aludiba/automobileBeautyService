#import "GPUImageTwoPassFilter.h"
#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImage3x3ConvolutionFilter.h"

@interface GPUImageSobelEdgeDetectionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithFragmentShaderFromStringBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBm:(NSInteger)BM;
+ (BOOL)setUniformsForProgramAtIndexBm:(NSInteger)BM;
+ (BOOL)wantsMonochromeInputBm:(NSInteger)BM;
+ (BOOL)providesMonochromeOutputBm:(NSInteger)BM;
+ (BOOL)setTexelWidthBm:(NSInteger)BM;
+ (BOOL)setTexelHeightBm:(NSInteger)BM;
+ (BOOL)setEdgeStrengthBm:(NSInteger)BM;

@end
