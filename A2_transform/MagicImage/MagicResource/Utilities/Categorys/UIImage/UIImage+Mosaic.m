#import "UIImage+Mosaic.h"
static CGContextRef CreateRGBABitmapContext (CGImageRef inImage)
{
    CGContextRef context = NULL;
    CGColorSpaceRef colorSpace;
    void *bitmapData; 
    size_t bitmapByteCount;
    size_t bitmapBytesPerRow;
    size_t pixelsWide = CGImageGetWidth(inImage); 
    size_t pixelsHigh = CGImageGetHeight(inImage);
    bitmapBytesPerRow    = (pixelsWide * 4); 
    bitmapByteCount    = (bitmapBytesPerRow * pixelsHigh); 
    colorSpace = CGColorSpaceCreateDeviceRGB();
    bitmapData = malloc( bitmapByteCount );
    context = CGBitmapContextCreate (bitmapData,
                                     pixelsWide,
                                     pixelsHigh,
                                     8,
                                     bitmapBytesPerRow,
                                     colorSpace,
                                     kCGImageAlphaPremultipliedLast);
    CGColorSpaceRelease( colorSpace );
    return context;
}
static unsigned char *RequestImagePixelData(UIImage *inImage)
{
    CGImageRef img = [inImage CGImage];
    CGSize size = [inImage size];
    CGContextRef cgctx = CreateRGBABitmapContext(img);
    CGRect rect = {{0,0},{size.width, size.height}};
    CGContextDrawImage(cgctx, rect, img);
    unsigned char *data = CGBitmapContextGetData (cgctx);
    CGContextRelease(cgctx);
    return data;
}
@implementation UIImage (Mosaic)
- (UIImage *)mosaicImage_all_WithLevel:(int)level
{
    unsigned char *imgPixel = RequestImagePixelData(self);
    CGImageRef inImageRef = [self CGImage];
    size_t width = CGImageGetWidth(inImageRef);
    size_t height = CGImageGetHeight(inImageRef);
    unsigned char prev[4] = {0};
    size_t bytewidth = width * 4;
    int i,j;
    int val = level;
    for(i=0;i<height;i++) {
        if (((i+1)%val) == 0) {
            memcpy(imgPixel+bytewidth*i, imgPixel+bytewidth*(i-1), bytewidth);
            continue;
        }
        for(j=0;j<width;j++) {
            if (((j+1)%val) == 1) {
                memcpy(prev, imgPixel+bytewidth*i+j*4, 4);
                continue;
            }
            memcpy(imgPixel+bytewidth*i+j*4, prev, 4);
        }
    }
    NSInteger dataLength = width*height* 4;
    CGDataProviderRef provider = CGDataProviderCreateWithData(NULL, imgPixel, dataLength, NULL);
    int bitsPerComponent = 8;
    int bitsPerPixel = 32;
    CGColorSpaceRef colorSpaceRef = CGColorSpaceCreateDeviceRGB();
    CGBitmapInfo bitmapInfo = kCGBitmapByteOrderDefault;
    CGColorRenderingIntent renderingIntent = kCGRenderingIntentDefault;
    CGImageRef imageRef = CGImageCreate(width, height,
                                        bitsPerComponent,
                                        bitsPerPixel,
                                        bytewidth,
                                        colorSpaceRef,
                                        bitmapInfo,
                                        provider,
                                        NULL, NO, renderingIntent);
    UIImage *my_Image = [UIImage imageWithCGImage:imageRef];
    CFRelease(imageRef);
    CGColorSpaceRelease(colorSpaceRef);
    CGDataProviderRelease(provider);
    return my_Image;
}
- (UIImage *)mosaicImage_ios_6_0_WithLevel:(int)level
{
    CIContext *context = [CIContext contextWithOptions:nil];
    CIFilter *filter= [CIFilter filterWithName:@"CIPixellate"];
    CIImage *inputImage = [CIImage imageWithCGImage:self.CGImage];
    CIVector *vector = [CIVector vectorWithX:self.size.width /2.0f Y:self.size.height /2.0f];
    [filter setDefaults];
    [filter setValue:vector forKey:@"inputCenter"];
    [filter setValue:[NSNumber numberWithDouble:level] forKey:@"inputScale"];
    [filter setValue:inputImage forKey:@"inputImage"];
    CGImageRef cgiimage = [context createCGImage:filter.outputImage fromRect:filter.outputImage.extent];
    UIImage *newImage = [UIImage imageWithCGImage:cgiimage scale:self.scale orientation:self.imageOrientation];
    CGImageRelease(cgiimage);
    return newImage;
}
- (UIImage *)mosaicImageWithLevel:(int)level
{
    if ([[[UIDevice currentDevice] systemVersion] floatValue] < 6.0) {
        return [self mosaicImage_all_WithLevel:level];
    }
    return [self mosaicImage_ios_6_0_WithLevel:level];
}
- (UIImage *)mosaicDefaultImage
{
    if ([[[UIDevice currentDevice] systemVersion] floatValue] < 6.0) {
        return [self mosaicImage_all_WithLevel:24.0];
    }
    return [self defaultMosaic_ios_6_0];
}
- (UIImage *)defaultMosaic_ios_6_0
{
    CIImage *ciImage = [[CIImage alloc] initWithCGImage:self.CGImage];
    CIFilter *filter = [CIFilter filterWithName:@"CIPixellate"];
    [filter setValue:ciImage forKey:kCIInputImageKey];
    [filter setDefaults];
    CIVector *vector = [CIVector vectorWithX:self.size.width /2.0f Y:self.size.height /2.0f];
    [filter setValue:vector forKey:@"inputCenter"];
    [filter setValue:[NSNumber numberWithDouble:24] forKey:@"inputScale"];
    CIImage *outImage = [filter valueForKey:kCIOutputImageKey];
    CIContext *context = [CIContext contextWithOptions:nil];
    CGImageRef cgImage = [context createCGImage:outImage fromRect:[ciImage extent]];
    UIImage *showImage = [UIImage imageWithCGImage:cgImage];
    CGImageRelease(cgImage);
    return showImage;
}
@end
