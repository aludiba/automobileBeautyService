#import "GPUImage3x3ConvolutionFilter+Hb.h"
@implementation GPUImage3x3ConvolutionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)setConvolutionKernelHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
