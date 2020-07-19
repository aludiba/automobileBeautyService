#import "BMGPUImageRGBFilterK+Bm-Deletecomments.h"
@implementation BMGPUImageRGBFilterK (Bm-Deletecomments)
+ (BOOL)rinitBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}
+ (BOOL)lSetredBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)PSetgreenBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)wSetblueBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}

@end
