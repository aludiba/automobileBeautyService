#import "UIImage+Alpha.h"
@implementation UIImage (Alpha)
static CGContextRef CreateARGBBitmapContextWithCGImage(CGImageRef inImage)
{
    CGContextRef context = NULL;
    CGColorSpaceRef colorSpace;
    void *bitmapData;
    size_t pixelsWide = CGImageGetWidth(inImage);
    size_t pixelsHigh = CGImageGetHeight(inImage);
    size_t bitmapBytesPerRow = (pixelsWide * 4);
    size_t bitmapByteCount = (bitmapBytesPerRow * pixelsHigh);
    colorSpace = CGColorSpaceCreateDeviceRGB();
    if (colorSpace == NULL) {
        return nil;
    }
    bitmapData = malloc( bitmapByteCount );
    if (bitmapData == NULL) {
        CGColorSpaceRelease( colorSpace );
        return nil;
    }
    context = CGBitmapContextCreate (bitmapData,    
                                     pixelsWide,    
                                     pixelsHigh,    
                                     8,             
                                     bitmapBytesPerRow,
                                     colorSpace,    
                                     kCGImageAlphaPremultipliedFirst);
    if (context == NULL) {
        fprintf (stderr, "Context not created!");
    }
    free (bitmapData);
    CGColorSpaceRelease( colorSpace );
    return context;
}
- (NSData *)ARGBData
{
    CGContextRef cgctx = CreateARGBBitmapContextWithCGImage(self.CGImage);
    if (cgctx == NULL) {
        return nil;
    }
    size_t w = CGImageGetWidth(self.CGImage);
    size_t h = CGImageGetHeight(self.CGImage);
    CGRect rect = {{0,0},{w,h}};
    CGContextDrawImage(cgctx, rect, self.CGImage);
    void *data = CGBitmapContextGetData (cgctx);
    CGContextRelease(cgctx);
    if (!data) {
        return nil;
    }
    size_t dataSize = 4 * w * h; 
    return [NSData dataWithBytes:data length:dataSize];
}
- (BOOL)isPointTransparent:(CGPoint)point
{
    NSData *rawData = [self ARGBData];  
    if (rawData == nil) {
        return NO;
    }
    size_t bitPerPoint = 4;
    size_t bitPerRow = self.size.width * 4; 
    NSUInteger index = point.x * bitPerPoint + (point.y * bitPerRow);
    char *rawDataBytes = ( char *)[rawData bytes];
    NSLog(@"rawDataBytes[index]=%d",rawDataBytes[index]);
    return rawDataBytes[index] == 0;
}
- (BOOL)hasAlpha
{
    CGImageAlphaInfo alpha = CGImageGetAlphaInfo(self.CGImage);
    return (alpha == kCGImageAlphaFirst ||
            alpha == kCGImageAlphaLast ||
            alpha == kCGImageAlphaPremultipliedFirst ||
            alpha == kCGImageAlphaPremultipliedLast);
}
- (UIImage *)imageWithAlpha
{
    if ([self hasAlpha]) {
        return self;
    }
    CGImageRef imageRef = self.CGImage;
    size_t width = CGImageGetWidth(imageRef);
    size_t height = CGImageGetHeight(imageRef);
    CGContextRef offscreenContext = CGBitmapContextCreate(NULL,
                                                          width,
                                                          height,
                                                          8,
                                                          0,
                                                          CGImageGetColorSpace(imageRef),
                                                          kCGBitmapByteOrderDefault | kCGImageAlphaPremultipliedFirst);
    CGContextDrawImage(offscreenContext, CGRectMake(0, 0, width, height), imageRef);
    CGImageRef imageRefWithAlpha = CGBitmapContextCreateImage(offscreenContext);
    UIImage *imageWithAlpha = [UIImage imageWithCGImage:imageRefWithAlpha];
    CGContextRelease(offscreenContext);
    CGImageRelease(imageRefWithAlpha);
    return imageWithAlpha;
}
- (UIImage *)transparentBorderImage:(NSUInteger)borderSize
{
    UIImage *image = [self imageWithAlpha];
    CGRect newRect = CGRectMake(0, 0, image.size.width + borderSize * 2, image.size.height + borderSize * 2);
    CGContextRef bitmap = CGBitmapContextCreate(NULL,
                                                newRect.size.width,
                                                newRect.size.height,
                                                CGImageGetBitsPerComponent(self.CGImage),
                                                0,
                                                CGImageGetColorSpace(self.CGImage),
                                                CGImageGetBitmapInfo(self.CGImage));
    CGRect imageLocation = CGRectMake(borderSize, borderSize, image.size.width, image.size.height);
    CGContextDrawImage(bitmap, imageLocation, self.CGImage);
    CGImageRef borderImageRef = CGBitmapContextCreateImage(bitmap);
    CGImageRef maskImageRef = [self newBorderMask:borderSize size:newRect.size];
    CGImageRef transparentBorderImageRef = CGImageCreateWithMask(borderImageRef, maskImageRef);
    UIImage *transparentBorderImage = [UIImage imageWithCGImage:transparentBorderImageRef];
    CGContextRelease(bitmap);
    CGImageRelease(borderImageRef);
    CGImageRelease(maskImageRef);
    CGImageRelease(transparentBorderImageRef);
    return transparentBorderImage;
}
- (CGImageRef)newBorderMask:(NSUInteger)borderSize size:(CGSize)size
{
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceGray();
    CGContextRef maskContext = CGBitmapContextCreate(NULL,
                                                     size.width,
                                                     size.height,
                                                     8, 
                                                     0,
                                                     colorSpace,
                                                     kCGBitmapByteOrderDefault | kCGImageAlphaNone);
    CGContextSetFillColorWithColor(maskContext, [UIColor blackColor].CGColor);
    CGContextFillRect(maskContext, CGRectMake(0, 0, size.width, size.height));
    CGContextSetFillColorWithColor(maskContext, [UIColor whiteColor].CGColor);
    CGContextFillRect(maskContext, CGRectMake(borderSize, borderSize, size.width - borderSize * 2, size.height - borderSize * 2));
    CGImageRef maskImageRef = CGBitmapContextCreateImage(maskContext);
    CGContextRelease(maskContext);
    CGColorSpaceRelease(colorSpace);
    return maskImageRef;
}
@end
