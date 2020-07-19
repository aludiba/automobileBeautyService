#import "GPUImageAdaptiveThresholdFilter+-Deletecomments.h"
@implementation GPUImageAdaptiveThresholdFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}
+ (BOOL)setBlurRadiusInPixels-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)blurRadiusInPixels-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}

@end
