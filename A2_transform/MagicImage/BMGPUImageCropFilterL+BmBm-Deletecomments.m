#import "BMGPUImageCropFilterL+BmBm-Deletecomments.h"
@implementation BMGPUImageCropFilterL (BmBm-Deletecomments)
+ (BOOL)aInitwithcropregionBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)DinitBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 21 == 0;
}
+ (BOOL)ASetinputsizegAtindexBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 29 == 0;
}
+ (BOOL)xcalculateCropTextureCoordinatesBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)lNewframereadyattimeqAtindexBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}
+ (BOOL)OSetcropregionBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)xSetinputrotationPAtindexBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 23 == 0;
}

@end
