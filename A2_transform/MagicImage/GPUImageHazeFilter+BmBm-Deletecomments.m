#import "GPUImageHazeFilter+BmBm-Deletecomments.h"
@implementation GPUImageHazeFilter (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)setDistanceBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 33 == 0;
}
+ (BOOL)setSlopeBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 35 == 0;
}

@end
