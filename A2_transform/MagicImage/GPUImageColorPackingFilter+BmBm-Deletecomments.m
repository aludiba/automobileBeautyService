#import "GPUImageColorPackingFilter+BmBm-Deletecomments.h"
@implementation GPUImageColorPackingFilter (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)setupFilterForSizeBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}
+ (BOOL)sizeOfFBOBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)outputFrameSizeBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}

@end
