#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImage3x3ConvolutionFilter.h"
#import "GPUImage3x3ConvolutionFilter+Bm.h"
#import "GPUImage3x3ConvolutionFilter+BmBm.h"
#import "GPUImage3x3ConvolutionFilter+BmBmHb.h"

@interface GPUImage3x3ConvolutionFilter (BmBmHbHb)
+ (BOOL)initBmBmHbHb:(NSInteger)hb;
+ (BOOL)initWithFragmentShaderFromStringBmBmHbHb:(NSInteger)hb;
+ (BOOL)setConvolutionKernelBmBmHbHb:(NSInteger)hb;

@end
