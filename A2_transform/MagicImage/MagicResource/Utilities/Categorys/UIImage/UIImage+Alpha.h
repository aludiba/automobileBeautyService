#import <UIKit/UIKit.h>
@interface UIImage (Alpha)
- (BOOL)hasAlpha;
- (NSData *)ARGBData;
- (BOOL)isPointTransparent:(CGPoint)point;
- (UIImage *)imageWithAlpha;
- (UIImage *)transparentBorderImage:(NSUInteger)borderSize;
- (CGImageRef)newBorderMask:(NSUInteger)borderSize size:(CGSize)size;
@end
