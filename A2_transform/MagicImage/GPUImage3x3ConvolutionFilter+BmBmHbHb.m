#import "GPUImage3x3ConvolutionFilter+BmBmHbHb.h"
@implementation GPUImage3x3ConvolutionFilter (BmBmHbHb)
+ (BOOL)initBmBmHbHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringBmBmHbHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)setConvolutionKernelBmBmHbHb:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
