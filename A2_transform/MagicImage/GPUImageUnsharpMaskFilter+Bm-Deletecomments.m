#import "GPUImageUnsharpMaskFilter+Bm-Deletecomments.h"
@implementation GPUImageUnsharpMaskFilter (Bm-Deletecomments)
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}
+ (BOOL)blurRadiusInPixelsBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)setIntensityBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}

@end
