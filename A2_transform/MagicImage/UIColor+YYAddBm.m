#import "UIColor+YYAddBm.h"
@implementation UIColor (YYAddBm)
+ (BOOL)colorWithHueSaturationLightnessAlphaBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)colorWithCyanMagentaYellowBlackAlphaBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)colorWithRGBBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)colorWithRGBABm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)colorWithRGBAlphaBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)rgbValueBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)rgbaValueBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)colorWithHexStringBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)hexStringBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)hexStringWithAlphaBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)hexStringWithAlphaBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)colorByAddColorBlendmodeBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)colorByChangeHueSaturationBrightnessAlphaBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)getHueSaturationLightnessAlphaBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)getCyanMagentaYellowBlackAlphaBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)redBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)greenBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)blueBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)alphaBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)hueBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)saturationBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)brightnessBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)colorSpaceModelBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)colorSpaceStringBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
