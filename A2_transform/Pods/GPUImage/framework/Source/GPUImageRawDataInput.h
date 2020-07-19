#import "GPUImageOutput.h"
typedef enum {
	GPUPixelFormatBGRA = GL_BGRA,
	GPUPixelFormatRGBA = GL_RGBA,
	GPUPixelFormatRGB = GL_RGB,
    GPUPixelFormatLuminance = GL_LUMINANCE
} GPUPixelFormat;
typedef enum {
	GPUPixelTypeUByte = GL_UNSIGNED_BYTE,
	GPUPixelTypeFloat = GL_FLOAT
} GPUPixelType;
@interface GPUImageRawDataInput : GPUImageOutput
{
    CGSize uploadedImageSize;
	dispatch_semaphore_t dataUpdateSemaphore;
}
- (id)initWithBytes:(GLubyte *)bytesToUpload size:(CGSize)imageSize;
- (id)initWithBytes:(GLubyte *)bytesToUpload size:(CGSize)imageSize pixelFormat:(GPUPixelFormat)pixelFormat;
- (id)initWithBytes:(GLubyte *)bytesToUpload size:(CGSize)imageSize pixelFormat:(GPUPixelFormat)pixelFormat type:(GPUPixelType)pixelType;
@property (readwrite, nonatomic) GPUPixelFormat pixelFormat;
@property (readwrite, nonatomic) GPUPixelType   pixelType;
- (void)updateDataFromBytes:(GLubyte *)bytesToUpload size:(CGSize)imageSize;
- (void)processData;
- (void)processDataForTimestamp:(CMTime)frameTime;
- (CGSize)outputImageSize;
@end
