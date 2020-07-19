#import "GPUImageChromaKeyFilter+BmBm-Deletecomments.h"
@implementation GPUImageChromaKeyFilter (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)setColorToReplaceRedGreenBlueBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}
+ (BOOL)setThresholdSensitivityBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}
+ (BOOL)setSmoothingBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}

@end
