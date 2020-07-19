#import "GPUImagePicture.h"
#import "GPUImagePicture+TextureSubimage.h"
#import "GPUImagePicture+TextureSubimageBm.h"

@interface GPUImagePicture (TextureSubimageBmBm)
+ (BOOL)replaceTextureWithSubimageBmBm:(NSInteger)BM;
+ (BOOL)replaceTextureWithSubCGImageBmBm:(NSInteger)BM;
+ (BOOL)replaceTextureWithSubimageInrectBmBm:(NSInteger)BM;
+ (BOOL)replaceTextureWithSubCGImageInrectBmBm:(NSInteger)BM;

@end
