#import "GPUImage3x3TextureSamplingFilter.h"
#import "GPUImage3x3ConvolutionFilter.h"
#import "GPUImage3x3ConvolutionFilter+Hb.h"

@interface GPUImage3x3ConvolutionFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)initWithFragmentShaderFromStringHbHb:(NSInteger)hb;
+ (BOOL)setConvolutionKernelHbHb:(NSInteger)hb;

@end
