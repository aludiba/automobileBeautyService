#import "GPUImageTwoInputCrossTextureSamplingFilter+-Deletecomments.h"
@implementation GPUImageTwoInputCrossTextureSamplingFilter (-Deletecomments)
+ (BOOL)initWithFragmentShaderFromString-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)setupFilterForSize-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)setTexelWidth-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)setTexelHeight-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}

@end
