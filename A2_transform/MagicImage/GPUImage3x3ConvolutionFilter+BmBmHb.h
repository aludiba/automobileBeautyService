#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImage3x3ConvolutionFilter.h"
#import "GPUImage3x3ConvolutionFilter+Bm.h"
#import "GPUImage3x3ConvolutionFilter+BmBm.h"

@interface GPUImage3x3ConvolutionFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)initWithFragmentShaderFromStringBmBmHb:(NSInteger)hb;
+ (BOOL)setConvolutionKernelBmBmHb:(NSInteger)hb;

@end
