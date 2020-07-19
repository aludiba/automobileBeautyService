#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImage3x3ConvolutionFilter.h"
#import "GPUImage3x3ConvolutionFilter+Bm.h"
#import "GPUImage3x3ConvolutionFilter+BmBm.h"

@interface GPUImage3x3ConvolutionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)initWithFragmentShaderFromStringBmBmBm:(NSInteger)BM;
+ (BOOL)setConvolutionKernelBmBmBm:(NSInteger)BM;

@end
