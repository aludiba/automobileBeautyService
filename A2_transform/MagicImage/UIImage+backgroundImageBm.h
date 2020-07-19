#import <UIKit/UIKit.h>
#import "UIImage+backgroundImage.h"
#import "UIImage+ImageEffects.h"
#import "UIImage+Clip.h"

@interface UIImage (backgroundImageBm)
+ (BOOL)getBackgroundImageWithalphaWidthBm:(NSInteger)BM;
+ (BOOL)getBackgroundImageWithalphaBm:(NSInteger)BM;
+ (BOOL)getBackgroundImageBm:(NSInteger)BM;
+ (BOOL)backgroundImageAlphaWidthBm:(NSInteger)BM;
+ (BOOL)getEffectBgImageWithmaskcolorBm:(NSInteger)BM;
+ (BOOL)imageWithTintColorBm:(NSInteger)BM;
+ (BOOL)imageWithGradientTintColorBm:(NSInteger)BM;
+ (BOOL)imageWithTintColorBlendmodeBm:(NSInteger)BM;
+ (BOOL)getSizeWithRateLimitsizeBm:(NSInteger)BM;

@end
