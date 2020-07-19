#import <UIKit/UIKit.h>
@interface UIColor (Hex)
+ (UIColor *)colorWithHexString:(NSString *)string;
+ (UIColor *)colorWithHexString:(NSString *)string alpha:(CGFloat)alpha;
+ (UIColor *)colorWithGrayScale:(NSInteger)grayScale;
@end
