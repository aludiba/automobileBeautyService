#import "GPUImageHalftoneFilter+BmBmBm-Deletecomments.h"
@implementation GPUImageHalftoneFilter (BmBmBm-Deletecomments)
+ (BOOL)initBmBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 37 == 0;
}

@end
