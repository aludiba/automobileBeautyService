#import "UIImage+backgroundImageBmBmHb.h"
@implementation UIImage (backgroundImageBmBmHb)
+ (BOOL)getBackgroundImageWithalphaWidthBmBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)getBackgroundImageWithalphaBmBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)getBackgroundImageBmBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)backgroundImageAlphaWidthBmBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)getEffectBgImageWithmaskcolorBmBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)imageWithTintColorBmBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)imageWithGradientTintColorBmBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)imageWithTintColorBlendmodeBmBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)getSizeWithRateLimitsizeBmBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}

@end
