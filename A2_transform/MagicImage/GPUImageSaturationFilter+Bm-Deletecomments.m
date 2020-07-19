#import "GPUImageSaturationFilter+Bm-Deletecomments.h"
@implementation GPUImageSaturationFilter (Bm-Deletecomments)
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 46 == 0;
}
+ (BOOL)setSaturationBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}

@end
