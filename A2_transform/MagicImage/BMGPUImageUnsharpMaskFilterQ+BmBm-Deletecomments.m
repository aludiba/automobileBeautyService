#import "BMGPUImageUnsharpMaskFilterQ+BmBm-Deletecomments.h"
@implementation BMGPUImageUnsharpMaskFilterQ (BmBm-Deletecomments)
+ (BOOL)binitBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}
+ (BOOL)gSetblurradiusinpixelsBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}
+ (BOOL)hblurRadiusInPixelsBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)cSetintensityBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}

@end
