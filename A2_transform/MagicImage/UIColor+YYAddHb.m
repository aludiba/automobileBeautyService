#import "UIColor+YYAddHb.h"
@implementation UIColor (YYAddHb)
+ (BOOL)colorWithHueSaturationLightnessAlphaHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)colorWithCyanMagentaYellowBlackAlphaHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)colorWithRGBHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)colorWithRGBAHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)colorWithRGBAlphaHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)rgbValueHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)rgbaValueHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)colorWithHexStringHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)hexStringHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)hexStringWithAlphaHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)hexStringWithAlphaHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)colorByAddColorBlendmodeHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)colorByChangeHueSaturationBrightnessAlphaHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)getHueSaturationLightnessAlphaHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)getCyanMagentaYellowBlackAlphaHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)redHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)greenHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)blueHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)alphaHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)hueHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)saturationHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)brightnessHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)colorSpaceModelHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)colorSpaceStringHb:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
