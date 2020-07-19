#import <UIKit/UIKit.h>
@interface UIImage (BoxBlur)
+ (UIImage *)blurryImage:(UIImage *)image withBlurLevel:(CGFloat)blur;
- (UIImage*)drn_boxblurImageWithBlur:(CGFloat)blur;
@end
