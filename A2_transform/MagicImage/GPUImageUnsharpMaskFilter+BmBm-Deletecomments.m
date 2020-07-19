#import "GPUImageUnsharpMaskFilter+BmBm-Deletecomments.h"
@implementation GPUImageUnsharpMaskFilter (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)setBlurRadiusInPixelsBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}
+ (BOOL)blurRadiusInPixelsBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}
+ (BOOL)setIntensityBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}

@end
