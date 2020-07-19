#import "UIImage+Resize.h"
#import "UIImage+RoundedCorner.h"
#import "UIImage+Alpha.h"
@implementation UIImage (Resize)
- (UIImage *)setImageScale:(float)scale{
    CGRect imageRect = { CGPointZero, self.size };
    UIGraphicsBeginImageContextWithOptions(self.size, NO, scale);
    CGContextRef outputContext = UIGraphicsGetCurrentContext();
    CGContextScaleCTM(outputContext, 1.0, -1.0);
    CGContextTranslateCTM(outputContext, 0, -self.size.height);
    CGContextDrawImage(outputContext, imageRect, self.CGImage);
    UIImage *outputImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return outputImage;
}
- (UIImage *)resizedCameraIconImage:(CGSize)newSize interpolationQuality:(CGInterpolationQuality)quality
{
    CGFloat newRate = newSize.width/newSize.height;
    CGSize size = [UIImage getSizeWithRate:newRate limitSize:self.size];
    CGFloat rectX = self.size.width/2 - size.width/2;
    CGFloat rectY = self.size.height/2 - size.height/2;
    CGRect rect = CGRectMake(rectX, rectY, size.width, size.height);
    if (self.size.width < self.size.height) {
        rectX = self.size.width/2 - size.width/2;;
        rectY = (self.size.height - size.height)/3;
        rect = CGRectMake(rectX, rectY, size.width, size.height);
    }
    UIImage *clopImage = [self croppedImage:rect];
    UIImage *resizeImage = [clopImage resizedImage:newSize interpolationQuality:quality];
    return resizeImage;
}
- (UIImage *)resizedAndClipImage:(CGSize)newSize interpolationQuality:(CGInterpolationQuality)quality
{
    CGFloat newRate = newSize.width/newSize.height;
    CGSize size = [UIImage getSizeWithRate:newRate limitSize:self.size];
    CGFloat rectX = self.size.width/2 - size.width/2;
    CGFloat rectY = self.size.height/2 - size.height/2;
    CGRect rect = CGRectMake(rectX, rectY, size.width, size.height);
    UIImage *clopImage = [self croppedImage:rect];
    UIImage *resizeImage = [clopImage resizedImage:newSize interpolationQuality:quality];
    return resizeImage;
}
- (UIImage *)croppedImage:(CGRect)bounds {
    CGImageRef imageRef = CGImageCreateWithImageInRect([self CGImage], bounds);
    UIImage *croppedImage = [UIImage imageWithCGImage:imageRef];
    CGImageRelease(imageRef);
    return croppedImage;
}
- (UIImage *)thumbnailImage:(NSInteger)thumbnailSize
          transparentBorder:(NSUInteger)borderSize
               cornerRadius:(NSUInteger)cornerRadius
       interpolationQuality:(CGInterpolationQuality)quality {
    UIImage *resizedImage = [self resizedImageWithContentMode:UIViewContentModeScaleAspectFill
                                                       bounds:CGSizeMake(thumbnailSize, thumbnailSize)
                                         interpolationQuality:quality];
    CGRect cropRect = CGRectMake(round((resizedImage.size.width - thumbnailSize) / 2),
                                 round((resizedImage.size.height - thumbnailSize) / 2),
                                 thumbnailSize,
                                 thumbnailSize);
    UIImage *croppedImage = [resizedImage croppedImage:cropRect];
    UIImage *transparentBorderImage = borderSize ? [croppedImage transparentBorderImage:borderSize] : croppedImage;
    return [transparentBorderImage roundedCornerImage:cornerRadius borderSize:borderSize];
}
- (UIImage *)resizedImage:(CGSize)newSize interpolationQuality:(CGInterpolationQuality)quality {
    BOOL drawTransposed;
    CGAffineTransform transform = CGAffineTransformIdentity;
    if ( [[[UIDevice currentDevice] systemVersion] floatValue] >= 5.0 ) 
    {
        drawTransposed = NO;  
    } 
    else 
    {    
        switch ( self.imageOrientation ) 
        {
            case UIImageOrientationLeft:
            case UIImageOrientationLeftMirrored:
            case UIImageOrientationRight:
            case UIImageOrientationRightMirrored:
                drawTransposed = YES;
                break;
            default:
                drawTransposed = NO;
        }
        transform = [self transformForOrientation:newSize];
    } 
    return [self resizedImage:newSize transform:transform drawTransposed:drawTransposed interpolationQuality:quality];
}
- (UIImage *)resizedImageWithContentMode:(UIViewContentMode)contentMode
                                  bounds:(CGSize)bounds
                    interpolationQuality:(CGInterpolationQuality)quality {
    CGFloat horizontalRatio = bounds.width / self.size.width;
    CGFloat verticalRatio = bounds.height / self.size.height;
    CGFloat ratio;
    switch (contentMode) {
        case UIViewContentModeScaleAspectFill:
            ratio = MAX(horizontalRatio, verticalRatio);
            break;
        case UIViewContentModeScaleAspectFit:
            ratio = MIN(horizontalRatio, verticalRatio);
            break;
        default:
            [NSException raise:NSInvalidArgumentException format:@"Unsupported content mode: %d", contentMode];
    }
    CGSize newSize = CGSizeMake(self.size.width * ratio, self.size.height * ratio);
    return [self resizedImage:newSize interpolationQuality:quality];
}
#pragma mark -
#pragma mark Private helper methods
- (UIImage *)resizedImage:(CGSize)newSize
                transform:(CGAffineTransform)transform
           drawTransposed:(BOOL)transpose
     interpolationQuality:(CGInterpolationQuality)quality {
    CGRect newRect = CGRectIntegral(CGRectMake(0, 0, newSize.width, newSize.height));
    CGRect transposedRect = CGRectMake(0, 0, newRect.size.height, newRect.size.width);
    CGImageRef imageRef = self.CGImage;
	CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef bitmap =CGBitmapContextCreate( NULL,
                                               newRect.size.width,
                                               newRect.size.height,
                                               8,
                                               0,
                                               colorSpace,
                                               kCGImageAlphaPremultipliedLast );
    CGColorSpaceRelease(colorSpace);
    CGContextConcatCTM(bitmap, transform);
    CGContextSetInterpolationQuality(bitmap, quality);
    CGContextDrawImage(bitmap, transpose ? transposedRect : newRect, imageRef);
    CGImageRef newImageRef = CGBitmapContextCreateImage(bitmap);
    UIImage *newImage = [UIImage imageWithCGImage:newImageRef];
    CGContextRelease(bitmap);
    CGImageRelease(newImageRef);
    return newImage;
}
- (CGAffineTransform)transformForOrientation:(CGSize)newSize {
    CGAffineTransform transform = CGAffineTransformIdentity;
    switch (self.imageOrientation) {
        case UIImageOrientationDown:           
        case UIImageOrientationDownMirrored:   
            transform = CGAffineTransformTranslate(transform, newSize.width, newSize.height);
            transform = CGAffineTransformRotate(transform, M_PI);
            break;
        case UIImageOrientationLeft:           
        case UIImageOrientationLeftMirrored:   
            transform = CGAffineTransformTranslate(transform, newSize.width, 0);
            transform = CGAffineTransformRotate(transform, M_PI_2);
            break;
        case UIImageOrientationRight:          
        case UIImageOrientationRightMirrored:  
            transform = CGAffineTransformTranslate(transform, 0, newSize.height);
            transform = CGAffineTransformRotate(transform, -M_PI_2);
            break;
        default:
            break;
    }
    switch (self.imageOrientation) {
        case UIImageOrientationUpMirrored:     
        case UIImageOrientationDownMirrored:   
            transform = CGAffineTransformTranslate(transform, newSize.width, 0);
            transform = CGAffineTransformScale(transform, -1, 1);
            break;
        case UIImageOrientationLeftMirrored:   
        case UIImageOrientationRightMirrored:  
            transform = CGAffineTransformTranslate(transform, newSize.height, 0);
            transform = CGAffineTransformScale(transform, -1, 1);
            break;
        default:
            break;
    }
    return transform;
}
#pragma mark - scale image  operater
-(UIImage*)cropToSize:(CGSize)newSize usingMode:(NYXCropMode)cropMode
{
    const CGSize size = self.size;
    CGFloat x, y;
    switch (cropMode)
    {
        case NYXCropModeTopLeft:
            x = y = 0.0f;
            break;
        case NYXCropModeTopCenter:
            x = (size.width - newSize.width) * 0.5f;
            y = 0.0f;
            break;
        case NYXCropModeTopRight:
            x = size.width - newSize.width;
            y = 0.0f;
            break;
        case NYXCropModeBottomLeft:
            x = 0.0f;
            y = size.height - newSize.height;
            break;
        case NYXCropModeBottomCenter:
            x = (size.width - newSize.width) * 0.5f;
            y = size.height - newSize.height;
            break;
        case NYXCropModeBottomRight:
            x = size.width - newSize.width;
            y = size.height - newSize.height;
            break;
        case NYXCropModeLeftCenter:
            x = 0.0f;
            y = (size.height - newSize.height) * 0.5f;
            break;
        case NYXCropModeRightCenter:
            x = size.width - newSize.width;
            y = (size.height - newSize.height) * 0.5f;
            break;
        case NYXCropModeCenter:
            x = (size.width - newSize.width) * 0.5f;
            y = (size.height - newSize.height) * 0.5f;
            break;
        default: 
            x = y = 0.0f;
            break;
    }
    if (self.imageOrientation == UIImageOrientationLeft || self.imageOrientation == UIImageOrientationLeftMirrored || self.imageOrientation == UIImageOrientationRight || self.imageOrientation == UIImageOrientationRightMirrored)
    {
        CGFloat temp = x;
        x = y;
        y = temp;
    }
    CGRect cropRect = CGRectMake(x * self.scale, y * self.scale, newSize.width * self.scale, newSize.height * self.scale);
    CGImageRef croppedImageRef = CGImageCreateWithImageInRect(self.CGImage, cropRect);
    UIImage* cropped = [UIImage imageWithCGImage:croppedImageRef scale:self.scale orientation:self.imageOrientation];
    CGImageRelease(croppedImageRef);
    return cropped;
}
+ (CGSize)getSizeWithRate:(float)rate limitSize:(CGSize)size {
    float width = 0.0f;
    float height = 0.0f;
    float height1 = 1.0;
    if (size.height != 0.0) {
        height1 = size.height;
    }
    if (rate >= size.width / height1) {
        width = size.width;
        height = width / rate;
    }
    else {
        height = size.height;
        width = height * rate;
    }
    return CGSizeMake(width, height);
}
+ (CGSize)getSizeWithRate:(float)rate limitLargeSize:(CGSize)size {
    float width = 0.0f;
    float height = 0.0f;
    float height1 = 1.0;
    if (size.height != 0.0) {
        height1 = size.height;
    }
    if (rate >= size.width / height1) {
        height = size.height;
        width = height * rate;
    }
    else {
        if (rate == 0.0) {
            rate = 1.0;
        }
        width = size.height;
        height = width / rate;
    }
    return CGSizeMake(width, height);
}
@end
