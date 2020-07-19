#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImage3x3ConvolutionFilter.h"

@interface GPUImage3x3ConvolutionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithFragmentShaderFromStringHb:(NSInteger)hb;
+ (BOOL)setConvolutionKernelHb:(NSInteger)hb;

@end
