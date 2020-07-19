#import "GPUImageSwirlFilter+-Deletecomments.h"
@implementation GPUImageSwirlFilter (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}
+ (BOOL)setInputRotationAtindex-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)setRadius-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}
+ (BOOL)setAngle-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 16 == 0;
}
+ (BOOL)setCenter-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}

@end
