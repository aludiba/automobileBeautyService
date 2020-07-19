#import "GPUImageSobelEdgeDetectionFilter+-Deletecomments.h"
@implementation GPUImageSobelEdgeDetectionFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)initWithFragmentShaderFromString-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)setupFilterForSize-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)setUniformsForProgramAtIndex-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 31 == 0;
}
+ (BOOL)wantsMonochromeInput-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)providesMonochromeOutput-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)setTexelWidth-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)setTexelHeight-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}
+ (BOOL)setEdgeStrength-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 9 == 0;
}

@end
