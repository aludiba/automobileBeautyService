#import "GPUImageBulgeDistortionFilter+-Deletecomments.h"
@implementation GPUImageBulgeDistortionFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)adjustAspectRatio-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 11 == 0;
}
+ (BOOL)forceProcessingAtSize-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 3 == 0;
}
+ (BOOL)setInputSizeAtindex-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)setAspectRatio-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 8 == 0;
}
+ (BOOL)setInputRotationAtindex-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}
+ (BOOL)setRadius-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}
+ (BOOL)setScale-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}
+ (BOOL)setCenter-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}

@end
