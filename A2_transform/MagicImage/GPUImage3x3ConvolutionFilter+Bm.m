#import "GPUImage3x3ConvolutionFilter+Bm.h"
@implementation GPUImage3x3ConvolutionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setConvolutionKernelBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
