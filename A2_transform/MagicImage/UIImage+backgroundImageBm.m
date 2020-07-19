#import "UIImage+backgroundImageBm.h"
@implementation UIImage (backgroundImageBm)
+ (BOOL)getBackgroundImageWithalphaWidthBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)getBackgroundImageWithalphaBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)getBackgroundImageBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)backgroundImageAlphaWidthBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)getEffectBgImageWithmaskcolorBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)imageWithTintColorBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)imageWithGradientTintColorBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)imageWithTintColorBlendmodeBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)getSizeWithRateLimitsizeBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
