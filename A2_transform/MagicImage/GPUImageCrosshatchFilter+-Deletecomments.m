#import "GPUImageCrosshatchFilter+-Deletecomments.h"
@implementation GPUImageCrosshatchFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 38 == 0;
}
+ (BOOL)setCrossHatchSpacing-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 10 == 0;
}
+ (BOOL)setLineWidth-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}

@end
