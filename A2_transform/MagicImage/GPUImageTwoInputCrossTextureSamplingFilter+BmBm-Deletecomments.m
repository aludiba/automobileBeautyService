#import "GPUImageTwoInputCrossTextureSamplingFilter+BmBm-Deletecomments.h"
@implementation GPUImageTwoInputCrossTextureSamplingFilter (BmBm-Deletecomments)
+ (BOOL)initWithFragmentShaderFromStringBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)setupFilterForSizeBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)setTexelWidthBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)setTexelHeightBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}

@end
