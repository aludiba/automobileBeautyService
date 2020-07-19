#import "GPUImage3x3ConvolutionFilter+BmBm.h"
@implementation GPUImage3x3ConvolutionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)setConvolutionKernelBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
