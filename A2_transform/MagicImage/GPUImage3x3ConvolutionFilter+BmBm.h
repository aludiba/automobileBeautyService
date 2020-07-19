#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImage3x3ConvolutionFilter.h"
#import "GPUImage3x3ConvolutionFilter+Bm.h"

@interface GPUImage3x3ConvolutionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initWithFragmentShaderFromStringBmBm:(NSInteger)BM;
+ (BOOL)setConvolutionKernelBmBm:(NSInteger)BM;

@end
