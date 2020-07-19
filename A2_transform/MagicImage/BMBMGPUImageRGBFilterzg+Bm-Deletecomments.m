#import "BMBMGPUImageRGBFilterzg+Bm-Deletecomments.h"
@implementation BMBMGPUImageRGBFilterzg (Bm-Deletecomments)
+ (BOOL)ZPinitBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)ZXsetredBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)dDsetgreenBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)hMsetblueBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 20 == 0;
}

@end
