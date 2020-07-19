#import "GPUImagePolkaDotFilter+Bm-Deletecomments.h"
@implementation GPUImagePolkaDotFilter (Bm-Deletecomments)
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)setDotScalingBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 15 == 0;
}

@end
