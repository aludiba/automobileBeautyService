#import "UIImage+MaskShape.h"
#import "ColorMatrix.h"
static CGContextRef CreateRGBABitmapContext (CGImageRef inImage)
{
	CGContextRef context = NULL;
	CGColorSpaceRef colorSpace;
	void *bitmapData; 
	int bitmapByteCount;
	int bitmapBytesPerRow;
	size_t pixelsWide = CGImageGetWidth(inImage); 
	size_t pixelsHigh = CGImageGetHeight(inImage); 
	bitmapBytesPerRow	= (pixelsWide * 4); 
	bitmapByteCount	= (bitmapBytesPerRow * pixelsHigh); 
	colorSpace = CGColorSpaceCreateDeviceRGB();
	bitmapData = malloc(bitmapByteCount); 
    memset(bitmapData, 0, bitmapByteCount);
	context = CGBitmapContextCreate (bitmapData, pixelsWide, pixelsHigh, 8, bitmapBytesPerRow, colorSpace, kCGImageAlphaPremultipliedLast);
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
@implementation UIImage (MaskShape)
static void changeRGBA(int *red,int *green,int *blue,int *alpha, const float* f)
{
    int redV = *red;
    int greenV = *green;
    int blueV = *blue;
    int alphaV = *alpha;
    *red = f[0] * redV + f[1] * greenV + f[2] * blueV + f[3] * alphaV + f[4];
    *green = f[0+5] * redV + f[1+5] * greenV + f[2+5] * blueV + f[3+5] * alphaV + f[4+5];
    *blue = f[0+5*2] * redV + f[1+5*2] * greenV + f[2+5*2] * blueV + f[3+5*2] * alphaV + f[4+5*2];
    *alpha = f[0+5*3] * redV + f[1+5*3] * greenV + f[2+5*3] * blueV + f[3+5*3] * alphaV + f[4+5*3];
    if (*red > 255)
    {
        *red = 255;
    }
    if(*red < 0)
    {
        *red = 0;
    }
    if (*green > 255)
    {
        *green = 255;
    }
    if (*green < 0)
    {
        *green = 0;
    }
    if (*blue > 255)
    {
        *blue = 255;
    }
    if (*blue < 0)
    {
        *blue = 0;
    }
    if (*alpha > 255)
    {
        *alpha = 255;
    }
    if (*alpha < 0)
    {
        *alpha = 0;
    }
}
+ (UIImage*)imageWithImage:(UIImage*)inImage withColorMatrix:(const float*) f
{
	unsigned char *imgPixel = RequestImagePixelData(inImage);
	CGImageRef inImageRef = [inImage CGImage];
	GLuint w = CGImageGetWidth(inImageRef);
	GLuint h = CGImageGetHeight(inImageRef);
	int wOff = 0;
	int pixOff = 0;
	for(GLuint y = 0;y< h;y++)
	{
		pixOff = wOff;
		for (GLuint x = 0; x<w; x++)
		{
			int red = (unsigned char)imgPixel[pixOff];
			int green = (unsigned char)imgPixel[pixOff+1];
			int blue = (unsigned char)imgPixel[pixOff+2];
            int alpha = (unsigned char)imgPixel[pixOff+3];
            changeRGBA(&red, &green, &blue, &alpha, f);
			imgPixel[pixOff] = red;
			imgPixel[pixOff+1] = green;
			imgPixel[pixOff+2] = blue;
            imgPixel[pixOff+3] = alpha;
			pixOff += 4; 
		}
		wOff += w * 4;
	}
	NSInteger dataLength = w * h * 4;
	CGDataProviderRef provider = CGDataProviderCreateWithData(NULL, imgPixel, dataLength, NULL);
	int bitsPerComponent = 8;
	int bitsPerPixel = 32;
	int bytesPerRow = 4 * w;
	CGColorSpaceRef colorSpaceRef = CGColorSpaceCreateDeviceRGB();
	CGBitmapInfo bitmapInfo = kCGBitmapByteOrderDefault;
	CGColorRenderingIntent renderingIntent = kCGRenderingIntentDefault;
	CGImageRef imageRef = CGImageCreate(w, h, bitsPerComponent, bitsPerPixel, bytesPerRow,colorSpaceRef, bitmapInfo, provider, NULL, NO, renderingIntent);
	UIImage *myImage = [UIImage imageWithCGImage:imageRef];
	CFRelease(imageRef);
	CGColorSpaceRelease(colorSpaceRef);
	CGDataProviderRelease(provider);
	return myImage;
}
+ (UIImage *)imageChangeBlackToTransparent:(UIImage *)maskImage
{
    if (!maskImage) {
        return nil;
    }
    unsigned char *sourcePixel = RequestImagePixelData(maskImage);
    CGImageRef inImageRef = [maskImage CGImage];
    GLuint w = CGImageGetWidth(inImageRef);
    GLuint h = CGImageGetHeight(inImageRef);
    int wOff = 0;
    int pixOff = 0;
    for(GLuint y = 0;y< h;y++)
    {
        pixOff = wOff;
        for (GLuint x = 0; x<w; x++)
        {
            unsigned char pixelAlpha = sourcePixel[pixOff+3];
                sourcePixel[pixOff+3] = 255-pixelAlpha;
            pixOff += 4; 
        }
        wOff += w * 4;
    }
    NSInteger dataLength = w * h * 4;
    CGDataProviderRef provider = CGDataProviderCreateWithData(NULL, sourcePixel, dataLength, NULL);
    int bitsPerComponent = 8;
    int bitsPerPixel = 32;
    int bytesPerRow = 4 * w;
    CGColorSpaceRef colorSpaceRef = CGColorSpaceCreateDeviceRGB();
    CGBitmapInfo bitmapInfo = kCGBitmapByteOrderDefault | kCGImageAlphaLast;
    CGColorRenderingIntent renderingIntent = kCGRenderingIntentDefault;
    CGImageRef imageRef = CGImageCreate(w, h, bitsPerComponent, bitsPerPixel, bytesPerRow,colorSpaceRef, bitmapInfo, provider, NULL, NO, renderingIntent);
    UIImage *myImage = [UIImage imageWithCGImage:imageRef];
    CFRelease(imageRef);
    CGColorSpaceRelease(colorSpaceRef);
    CGDataProviderRelease(provider);
    return myImage;
}
- (UIImage *)imageWithMaskImage:(UIImage *)maskImage
{
    if (!maskImage) {
        return self;
    }
    unsigned char *sourcePixel = RequestImagePixelData(self);
    unsigned char *imgPixel = RequestImagePixelData(maskImage);
	CGImageRef inImageRef = [maskImage CGImage];
	GLuint w = CGImageGetWidth(inImageRef);
	GLuint h = CGImageGetHeight(inImageRef);
	int wOff = 0;
	int pixOff = 0;
	for(GLuint y = 0;y< h;y++)
	{
		pixOff = wOff;
		for (GLuint x = 0; x<w; x++)
		{
            sourcePixel[pixOff+3] = imgPixel[pixOff+3];
			pixOff += 4; 
		}
		wOff += w * 4;
	}
	NSInteger dataLength = w * h * 4;
	CGDataProviderRef provider = CGDataProviderCreateWithData(NULL, sourcePixel, dataLength, NULL);
	int bitsPerComponent = 8;
	int bitsPerPixel = 32;
	int bytesPerRow = 4 * w;
	CGColorSpaceRef colorSpaceRef = CGColorSpaceCreateDeviceRGB();
	CGBitmapInfo bitmapInfo = kCGBitmapByteOrderDefault | kCGImageAlphaLast;
	CGColorRenderingIntent renderingIntent = kCGRenderingIntentDefault;
	CGImageRef imageRef = CGImageCreate(w, h, bitsPerComponent, bitsPerPixel, bytesPerRow,colorSpaceRef, bitmapInfo, provider, NULL, NO, renderingIntent);
	UIImage *myImage = [UIImage imageWithCGImage:imageRef];
	CFRelease(imageRef);
	CGColorSpaceRelease(colorSpaceRef);
	CGDataProviderRelease(provider);
	return myImage;
}
- (UIImage *)imageWithMaskImage:(UIImage *)maskImage maskColor:(UIColor *)maskColor
{
    UIImage *sourceImage = self;
    if (maskColor) {
        UIGraphicsBeginImageContext(self.size);
        [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
        CGContextRef ref = UIGraphicsGetCurrentContext();
        CGContextSetFillColorWithColor(ref, maskColor.CGColor);
        CGContextAddRect(ref, CGRectMake(0, 0, self.size.width, self.size.height));
        CGContextFillPath(ref);
        sourceImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    }
    UIImage * newImage = [self imageWithMaskImage:sourceImage];
    return newImage;
}
- (UIImage *)imageWithLayerMaskImage:(UIImage *)maskImage maskColor:(UIColor *)maskColor
{    
    CALayer *maskLayer = [CALayer layer];
    if (maskImage) {
        maskLayer.frame = CGRectMake(0, 0, maskImage.size.width, maskImage.size.height);
        maskLayer.contents = (id)maskImage.CGImage;
    }
    UIImage *newImage = nil;
    if (maskColor) {
        UIGraphicsBeginImageContext(self.size);
        [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
        CGContextRef ref = UIGraphicsGetCurrentContext();
        CGContextSetFillColorWithColor(ref, maskColor.CGColor);
        CGContextAddRect(ref, CGRectMake(0, 0, self.size.width, self.size.height));
        CGContextFillPath(ref);
        newImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    }
    else {
        newImage = self;
    }
    CALayer *sourceLayer = [CALayer layer];
    sourceLayer.frame = CGRectMake(0, 0, newImage.size.width, newImage.size.height);
    sourceLayer.contents = (id)newImage.CGImage;
    sourceLayer.mask = maskLayer;
    UIGraphicsBeginImageContext(newImage.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [sourceLayer renderInContext:context];
    UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resultImage;
}
- (UIImage *)imageWithColor:(UIColor *)color
{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, self.scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(context, 0, self.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextSetBlendMode(context, kCGBlendModeNormal);
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextClipToMask(context, rect, self.CGImage);
    [color setFill];
    CGContextFillRect(context, rect);
    UIImage*newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}
@end
