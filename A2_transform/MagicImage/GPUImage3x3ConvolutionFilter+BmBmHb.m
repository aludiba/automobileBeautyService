#import "GPUImage3x3ConvolutionFilter+BmBmHb.h"
@implementation GPUImage3x3ConvolutionFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringBmBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)setConvolutionKernelBmBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
