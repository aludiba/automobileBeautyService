#import "GPUImageThresholdedNonMaximumSuppressionFilter+BmBm-Deletecomments.h"
@implementation GPUImageThresholdedNonMaximumSuppressionFilter (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)initWithPackedColorspaceBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 36 == 0;
}
+ (BOOL)setThresholdBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}

@end
