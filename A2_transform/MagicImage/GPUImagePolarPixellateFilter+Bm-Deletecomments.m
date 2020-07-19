#import "GPUImagePolarPixellateFilter+Bm-Deletecomments.h"
@implementation GPUImagePolarPixellateFilter (Bm-Deletecomments)
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}
+ (BOOL)setInputRotationAtindexBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)setPixelSizeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}
+ (BOOL)setCenterBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}

@end
