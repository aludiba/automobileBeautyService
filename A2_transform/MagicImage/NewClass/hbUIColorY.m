#import "hbUIColorY.h"
@implementation hbUIColorY
+ (BOOL)nColorwithhuehSaturationsLightnessHAlpha:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)KColorwithcyanSMagentahYellowHBlackOAlpha:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)GColorwithrgb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)cColorwithrgba:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)VColorwithrgbwAlpha:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)VrgbValue:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)frgbaValue:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)JColorwithhexstring:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)ihexString:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)ghexStringWithAlpha:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)yHexstringwithalpha:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)TColorbyaddcolorxBlendmode:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)KColorbychangehuebSaturationZBrightnessXAlpha:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)fGethueuSaturationJLightnesswAlpha:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)LGetcyanSMagentavYellowpBlackGAlpha:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)Dred:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)vgreen:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)Bblue:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)Ialpha:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)Whue:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)asaturation:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)Obrightness:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)NcolorSpaceModel:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)KcolorSpaceString:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
