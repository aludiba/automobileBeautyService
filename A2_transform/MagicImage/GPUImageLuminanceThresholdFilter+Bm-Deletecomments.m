#import "GPUImageLuminanceThresholdFilter+Bm-Deletecomments.h"
@implementation GPUImageLuminanceThresholdFilter (Bm-Deletecomments)
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)setThresholdBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}

@end
