#import "GPUImageHueFilter+BmBm-Deletecomments.h"
@implementation GPUImageHueFilter (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)setHueBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 49 == 0;
}

@end
