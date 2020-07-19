#import "GPUImagePinchDistortionFilter+BmBm-Deletecomments.h"
@implementation GPUImagePinchDistortionFilter (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}
+ (BOOL)adjustAspectRatioBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)forceProcessingAtSizeBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}
+ (BOOL)setInputSizeAtindexBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)setInputRotationAtindexBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}
+ (BOOL)setAspectRatioBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}
+ (BOOL)setRadiusBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}
+ (BOOL)setScaleBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)setCenterBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}

@end
