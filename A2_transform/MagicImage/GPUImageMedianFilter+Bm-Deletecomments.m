#import "GPUImageMedianFilter+Bm-Deletecomments.h"
@implementation GPUImageMedianFilter (Bm-Deletecomments)
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}

@end
