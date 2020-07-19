#import "GPUImage3x3ConvolutionFilter+BmBm-Deletecomments.h"
@implementation GPUImage3x3ConvolutionFilter (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)initWithFragmentShaderFromStringBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)setConvolutionKernelBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}

@end
