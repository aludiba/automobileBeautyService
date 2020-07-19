#import "GPUImageBoxBlurFilter+-Deletecomments.h"
@implementation GPUImageBoxBlurFilter (-Deletecomments)
+ (BOOL)vertexShaderForOptimizedBlurOfRadiusSigma-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)fragmentShaderForOptimizedBlurOfRadiusSigma-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 19 == 0;
}
+ (BOOL)setupFilterForSize-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}
+ (BOOL)setBlurRadiusInPixels-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}

@end
