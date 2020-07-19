#import "UIImage+ImageEffectsBmBm.h"
@implementation UIImage (ImageEffectsBmBm)
+ (BOOL)coverLightEffectBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)coverLightEffect2BmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)applyLightEffectBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)applyExtraLightEffect2BmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)applyExtraLightEffectBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)applyDarkEffectBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)applyTintEffectWithColorBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)applyBlurWithRadiusTintcolorSaturationdeltafactorMaskimageBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)applyBlurWithRadiusTintcolorSaturationdeltafactorMaskimageScaleBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
