#import "UIImage+ImageEffectsBmHb.h"
@implementation UIImage (ImageEffectsBmHb)
+ (BOOL)coverLightEffectBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)coverLightEffect2BmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)applyLightEffectBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)applyExtraLightEffect2BmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)applyExtraLightEffectBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)applyDarkEffectBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)applyTintEffectWithColorBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)applyBlurWithRadiusTintcolorSaturationdeltafactorMaskimageBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)applyBlurWithRadiusTintcolorSaturationdeltafactorMaskimageScaleBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
