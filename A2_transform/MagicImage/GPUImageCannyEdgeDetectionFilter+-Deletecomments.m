#import "GPUImageCannyEdgeDetectionFilter+-Deletecomments.h"
@implementation GPUImageCannyEdgeDetectionFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}
+ (BOOL)setBlurRadiusInPixels-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)blurRadiusInPixels-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}
+ (BOOL)setBlurTexelSpacingMultiplier-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)blurTexelSpacingMultiplier-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}
+ (BOOL)setTexelWidth-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 41 == 0;
}
+ (BOOL)texelWidth-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}
+ (BOOL)setTexelHeight-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}
+ (BOOL)texelHeight-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)setUpperThreshold-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}
+ (BOOL)upperThreshold-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)setLowerThreshold-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}
+ (BOOL)lowerThreshold-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}

@end
