#import "GPUImagePicture.h"
#import "GPUImagePicture+TextureSubimage.h"

@interface GPUImagePicture (TextureSubimageHb)
+ (BOOL)replaceTextureWithSubimageHb:(NSInteger)hb;
+ (BOOL)replaceTextureWithSubCGImageHb:(NSInteger)hb;
+ (BOOL)replaceTextureWithSubimageInrectHb:(NSInteger)hb;
+ (BOOL)replaceTextureWithSubCGImageInrectHb:(NSInteger)hb;

@end
