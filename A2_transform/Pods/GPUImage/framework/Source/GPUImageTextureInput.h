#import "GPUImageOutput.h"
@interface GPUImageTextureInput : GPUImageOutput
{
    CGSize textureSize;
}
- (id)initWithTexture:(GLuint)newInputTexture size:(CGSize)newTextureSize;
- (void)processTextureWithFrameTime:(CMTime)frameTime;
@end
