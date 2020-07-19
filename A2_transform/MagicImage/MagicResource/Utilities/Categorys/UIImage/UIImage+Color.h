#import <UIKit/UIKit.h>
@interface UIImage (Color)
+ (UIImage *)imageWithColor:(UIColor *)color;
- (UIColor *)colorAtPixel:(CGPoint)point;
- (UIImage *)convertToGrayImage;
@end
