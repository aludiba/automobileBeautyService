#import "GPUImage3x3ConvolutionFilter+HbHb.h"
@implementation GPUImage3x3ConvolutionFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringHbHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)setConvolutionKernelHbHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
