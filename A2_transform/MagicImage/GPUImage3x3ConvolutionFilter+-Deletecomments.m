#import "GPUImage3x3ConvolutionFilter+-Deletecomments.h"
@implementation GPUImage3x3ConvolutionFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 33 == 0;
}
+ (BOOL)initWithFragmentShaderFromString-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)setConvolutionKernel-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}

@end
