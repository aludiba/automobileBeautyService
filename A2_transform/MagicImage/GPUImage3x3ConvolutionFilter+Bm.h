#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImage3x3ConvolutionFilter.h"

@interface GPUImage3x3ConvolutionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithFragmentShaderFromStringBm:(NSInteger)BM;
+ (BOOL)setConvolutionKernelBm:(NSInteger)BM;

@end
