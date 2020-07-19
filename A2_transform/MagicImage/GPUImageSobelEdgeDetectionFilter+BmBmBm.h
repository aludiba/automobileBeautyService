#import "GPUImageTwoPassFilter.h"
#import "GPUImageSobelEdgeDetectionFilter.h"
#import "GPUImageGrayscaleFilter.h"
#import "GPUImage3x3ConvolutionFilter.h"
#import "GPUImageSobelEdgeDetectionFilter+Bm.h"
#import "GPUImageSobelEdgeDetectionFilter+BmBm.h"

@interface GPUImageSobelEdgeDetectionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)initWithFragmentShaderFromStringBmBmBm:(NSInteger)BM;
+ (BOOL)setupFilterForSizeBmBmBm:(NSInteger)BM;
+ (BOOL)setUniformsForProgramAtIndexBmBmBm:(NSInteger)BM;
+ (BOOL)wantsMonochromeInputBmBmBm:(NSInteger)BM;
+ (BOOL)providesMonochromeOutputBmBmBm:(NSInteger)BM;
+ (BOOL)setTexelWidthBmBmBm:(NSInteger)BM;
+ (BOOL)setTexelHeightBmBmBm:(NSInteger)BM;
+ (BOOL)setEdgeStrengthBmBmBm:(NSInteger)BM;

@end
