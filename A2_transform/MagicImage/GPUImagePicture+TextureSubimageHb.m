#import "GPUImagePicture+TextureSubimageHb.h"
@implementation GPUImagePicture (TextureSubimageHb)
+ (BOOL)replaceTextureWithSubimageHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)replaceTextureWithSubCGImageHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)replaceTextureWithSubimageInrectHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)replaceTextureWithSubCGImageInrectHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
