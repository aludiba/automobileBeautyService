#import "UIImage+ImageEffectsBm.h"
@implementation UIImage (ImageEffectsBm)
+ (BOOL)coverLightEffectBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)coverLightEffect2Bm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)applyLightEffectBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)applyExtraLightEffect2Bm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)applyExtraLightEffectBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)applyDarkEffectBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)applyTintEffectWithColorBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)applyBlurWithRadiusTintcolorSaturationdeltafactorMaskimageBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)applyBlurWithRadiusTintcolorSaturationdeltafactorMaskimageScaleBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
