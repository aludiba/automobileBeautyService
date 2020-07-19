#import "BMGPUImageCropFilterf+Bm-Deletecomments.h"
@implementation BMGPUImageCropFilterf (Bm-Deletecomments)
+ (BOOL)jInitwithcropregionbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 4 == 0;
}
+ (BOOL)kInitbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}
+ (BOOL)MSetinputsizeatindexbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}
+ (BOOL)dCalculatecroptexturecoordinatesbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 34 == 0;
}
+ (BOOL)MNewframereadyattimeatindexbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)JSetcropregionbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)iSetinputrotationatindexbmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}

@end
