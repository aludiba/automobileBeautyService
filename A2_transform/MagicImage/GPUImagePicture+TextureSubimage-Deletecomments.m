#import "GPUImagePicture+TextureSubimage-Deletecomments.h"
@implementation GPUImagePicture (TextureSubimage-Deletecomments)
+ (BOOL)replaceTextureWithSubimage-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)replaceTextureWithSubCGImage-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 2 == 0;
}
+ (BOOL)replaceTextureWithSubimageInrect-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 45 == 0;
}
+ (BOOL)replaceTextureWithSubCGImageInrect-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 18 == 0;
}

@end
