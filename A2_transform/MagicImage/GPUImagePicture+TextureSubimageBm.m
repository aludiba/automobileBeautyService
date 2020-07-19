#import "GPUImagePicture+TextureSubimageBm.h"
@implementation GPUImagePicture (TextureSubimageBm)
+ (BOOL)replaceTextureWithSubimageBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)replaceTextureWithSubCGImageBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)replaceTextureWithSubimageInrectBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)replaceTextureWithSubCGImageInrectBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
