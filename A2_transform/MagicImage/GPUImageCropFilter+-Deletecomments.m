#import "GPUImageCropFilter+-Deletecomments.h"
@implementation GPUImageCropFilter (-Deletecomments)
+ (BOOL)initWithCropRegion-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 28 == 0;
}
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 25 == 0;
}
+ (BOOL)setInputSizeAtindex-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 12 == 0;
}
+ (BOOL)calculateCropTextureCoordinates-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 44 == 0;
}
+ (BOOL)newFrameReadyAtTimeAtindex-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 22 == 0;
}
+ (BOOL)setCropRegion-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}
+ (BOOL)setInputRotationAtindex-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 32 == 0;
}

@end
