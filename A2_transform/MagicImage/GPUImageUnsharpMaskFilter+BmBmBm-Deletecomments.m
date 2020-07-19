#import "GPUImageUnsharpMaskFilter+BmBmBm-Deletecomments.h"
@implementation GPUImageUnsharpMaskFilter (BmBmBm-Deletecomments)
+ (BOOL)initBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)setIntensityBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}

@end
