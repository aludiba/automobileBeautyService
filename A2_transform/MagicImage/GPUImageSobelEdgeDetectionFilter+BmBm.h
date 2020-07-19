#import "GPUImageTwoPassFilter.h"
#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImage3x3ConvolutionFilter.h"
#import "GPUImageSobelEdgeDetectionFilter+Bm.h"

@interface GPUImageSobelEdgeDetectionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initWithFragmentShaderFromStringBmBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBmBm:(NSInteger)BM;
+ (BOOL)setUniformsForProgramAtIndexBmBm:(NSInteger)BM;
+ (BOOL)wantsMonochromeInputBmBm:(NSInteger)BM;
+ (BOOL)providesMonochromeOutputBmBm:(NSInteger)BM;
+ (BOOL)setTexelWidthBmBm:(NSInteger)BM;
+ (BOOL)setTexelHeightBmBm:(NSInteger)BM;
+ (BOOL)setEdgeStrengthBmBm:(NSInteger)BM;

@end
