#import "GPUImagePicture.h"
#import "GPUImagePicture+TextureSubimage.h"

@interface GPUImagePicture (TextureSubimageBm)
+ (BOOL)replaceTextureWithSubimageBm:(NSInteger)BM;
+ (BOOL)replaceTextureWithSubCGImageBm:(NSInteger)BM;
+ (BOOL)replaceTextureWithSubimageInrectBm:(NSInteger)BM;
+ (BOOL)replaceTextureWithSubCGImageInrectBm:(NSInteger)BM;

@end
