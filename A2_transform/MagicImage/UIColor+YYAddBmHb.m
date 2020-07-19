#import "UIColor+YYAddBmHb.h"
@implementation UIColor (YYAddBmHb)
+ (BOOL)colorWithHueSaturationLightnessAlphaBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)colorWithCyanMagentaYellowBlackAlphaBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)colorWithRGBBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)colorWithRGBABmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)colorWithRGBAlphaBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)rgbValueBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)rgbaValueBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)colorWithHexStringBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)hexStringBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)hexStringWithAlphaBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)hexStringWithAlphaBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)colorByAddColorBlendmodeBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)colorByChangeHueSaturationBrightnessAlphaBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)getHueSaturationLightnessAlphaBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)getCyanMagentaYellowBlackAlphaBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)redBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)greenBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)blueBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)alphaBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)hueBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)saturationBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)brightnessBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)colorSpaceModelBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)colorSpaceStringBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}

@end
