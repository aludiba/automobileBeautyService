#import "UIImage+backgroundImageBmBm.h"
@implementation UIImage (backgroundImageBmBm)
+ (BOOL)getBackgroundImageWithalphaWidthBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)getBackgroundImageWithalphaBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)getBackgroundImageBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)backgroundImageAlphaWidthBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)getEffectBgImageWithmaskcolorBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)imageWithTintColorBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)imageWithGradientTintColorBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)imageWithTintColorBlendmodeBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)getSizeWithRateLimitsizeBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
