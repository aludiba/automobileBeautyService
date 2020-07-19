#import "GPUImageColorPackingFilter+-Deletecomments.h"
@implementation GPUImageColorPackingFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 24 == 0;
}
+ (BOOL)setupFilterForSize-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)sizeOfFBO-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 6 == 0;
}
+ (BOOL)outputFrameSize-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}

@end
