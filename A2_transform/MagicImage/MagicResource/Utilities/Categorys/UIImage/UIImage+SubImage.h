#import <UIKit/UIKit.h>
@interface UIImage (SubImage)
- (UIImage *)subImageWithRect:(CGRect)rect;
- (UIImage *)rescaleImageToSize:(CGSize)size;
- (UIImage *)rescaleImageToPX:(CGFloat )toPX;
- (UIImage *)getTiledImageWithSize:(CGSize)size;
+ (UIImage *)imageFromView:(UIView *)view;
+ (UIImage*)mergeImage:(UIImage*)firstImage withImage:(UIImage*)secondImage;
@end
