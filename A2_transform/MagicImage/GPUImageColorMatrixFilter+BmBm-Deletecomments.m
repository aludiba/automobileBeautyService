#import "GPUImageColorMatrixFilter+BmBm-Deletecomments.h"
@implementation GPUImageColorMatrixFilter (BmBm-Deletecomments)
+ (BOOL)initBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)setIntensityBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)setColorMatrixBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 14 == 0;
}

@end
