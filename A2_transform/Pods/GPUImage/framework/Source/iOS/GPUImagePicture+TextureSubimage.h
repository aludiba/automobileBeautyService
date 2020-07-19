#import "GPUImagePicture.h"
@interface GPUImagePicture (TextureSubimage)
- (void)replaceTextureWithSubimage:(UIImage*)subimage;
- (void)replaceTextureWithSubCGImage:(CGImageRef)subimageSource;
- (void)replaceTextureWithSubimage:(UIImage*)subimage inRect:(CGRect)subRect;
- (void)replaceTextureWithSubCGImage:(CGImageRef)subimageSource inRect:(CGRect)subRect;
@end
