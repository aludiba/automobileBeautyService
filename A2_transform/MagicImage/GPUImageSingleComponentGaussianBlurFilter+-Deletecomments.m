#import "GPUImageSingleComponentGaussianBlurFilter+-Deletecomments.h"
@implementation GPUImageSingleComponentGaussianBlurFilter (-Deletecomments)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigma-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigma-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}

@end
