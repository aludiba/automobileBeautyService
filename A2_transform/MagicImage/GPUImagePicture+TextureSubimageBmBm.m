#import "GPUImagePicture+TextureSubimageBmBm.h"
@implementation GPUImagePicture (TextureSubimageBmBm)
+ (BOOL)replaceTextureWithSubimageBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)replaceTextureWithSubCGImageBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)replaceTextureWithSubimageInrectBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)replaceTextureWithSubCGImageInrectBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
