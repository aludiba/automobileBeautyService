#import "GPUImage3x3ConvolutionFilter+BmBmBm.h"
@implementation GPUImage3x3ConvolutionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringBmBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setConvolutionKernelBmBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
