#import "GPUImageVignetteFilter+BmBm-Deletecomments.h"
@implementation GPUImageVignetteFilter (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)setVignetteCenterBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)setVignetteColorBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)setVignetteStartBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)setVignetteEndBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}

@end
