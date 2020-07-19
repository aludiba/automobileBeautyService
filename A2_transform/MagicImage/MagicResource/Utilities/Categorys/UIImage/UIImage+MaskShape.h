#import <UIKit/UIKit.h>
static CGContextRef CreateRGBABitmapContext (CGImageRef inImage);
static unsigned char *RequestImagePixelData(UIImage *inImage);
@interface UIImage (MaskShape)
+ (UIImage*)imageChangeBlackToTransparent:(UIImage*)inImage;
- (UIImage *)imageWithMaskImage:(UIImage *)maskImage;
- (UIImage *)imageWithMaskImage:(UIImage *)maskImage maskColor:(UIColor *)maskColor;
- (UIImage *)imageWithLayerMaskImage:(UIImage *)maskImage maskColor:(UIColor *)maskColor;
- (UIImage *)imageWithColor:(UIColor *)color;
@end
