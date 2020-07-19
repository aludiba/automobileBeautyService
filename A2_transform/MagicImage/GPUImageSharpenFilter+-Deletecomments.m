#import "GPUImageSharpenFilter+-Deletecomments.h"
@implementation GPUImageSharpenFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 1 == 0;
}
+ (BOOL)setupFilterForSize-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)setSharpness-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 50 == 0;
}

@end
