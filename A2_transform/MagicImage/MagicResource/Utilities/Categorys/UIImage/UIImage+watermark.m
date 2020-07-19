#import "UIImage+watermark.h"
@implementation UIImage (watermark)
- (UIImage *)scaleToSize:(UIImage *)img size:(CGSize)size {
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);
    [img drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return scaledImage;
}
+ (UIImage *)watermarkImageWithShowImageViewFrame:(CGRect )frame sourceimage:(UIImage *)sourceImage watermarkImage:(UIImage *)watermarkImage time:(BOOL)showTime
{
    UIImageView *showView = [[UIImageView alloc] initWithFrame:frame];
    showView.image = sourceImage;
    CGFloat min = 0;
    if (sourceImage.size.width > sourceImage.size.height) {
        min = sourceImage.size.height;
    }else{
        min = sourceImage.size.width;
    }
    CGFloat acutalWatermarkWidth = 470.0 / 2048.0 * min;
    CGFloat acutalSpcingWith = 68.0 / 2048.0 * min;
    CGFloat acutalDateLabelHegiht = 65.0 / 2048 * min;
    CGFloat playWatermarkWith = frame.size.width / sourceImage.size.width * acutalWatermarkWidth;
    CGFloat playWatermarkHeight = playWatermarkWith * (watermarkImage.size.height / watermarkImage.size.width);
    CGFloat playSpcingWith = frame.size.width / sourceImage.size.width * acutalSpcingWith;
    CGFloat playDateLabelHegiht = 0.0;
    if (showTime) {
        playDateLabelHegiht = frame.size.width / sourceImage.size.width *acutalDateLabelHegiht;
    }
    CGRect watermarkFrame = CGRectMake(playSpcingWith,
                                       CGRectGetHeight(frame) - playWatermarkHeight - playSpcingWith - playDateLabelHegiht,
                                       playWatermarkWith,
                                       playWatermarkHeight);
    UIImageView *watermarkView = [[UIImageView alloc] initWithFrame:watermarkFrame];
    watermarkView.image = watermarkImage;
    [showView addSubview:watermarkView];
    UIImage *image = nil; 
    for (UIView *view in showView.subviews) {
        [view removeFromSuperview];
    }
    showView.image = nil;
    return image;
}
@end
