#import <UIKit/UIKit.h>
@interface UIImage (Text)
+ (UIImage *)drawTextWithStroke:(NSString *)string color:(UIColor *)color;
+ (UIImage *)drawDate:(NSString *)text InImage:(UIImage *)image font:(UIFont *)font point:(CGPoint)point;
@end
