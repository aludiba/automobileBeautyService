#import "GPUImageSingleComponentGaussianBlurFilter+BmBm-Deletecomments.h"
@implementation GPUImageSingleComponentGaussianBlurFilter (BmBm-Deletecomments)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigmaBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigmaBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}

@end
