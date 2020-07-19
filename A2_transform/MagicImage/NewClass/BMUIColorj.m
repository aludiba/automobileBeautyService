#import "BMUIColorJ.h"
@implementation BMUIColorJ
+ (BOOL)GColorwithrgbhex:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)SColorwithrgbahex:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)rColorwithrgbhexstring:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)DColorwithrgbahexstring:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)OColorwithrgbdecimalstring:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)JColorwithrgbdecimalstringTValue:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)VColorwithred255WGreen255pBlue255LAlpha255:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)yGetrgbhex:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)jGetrgbahex:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)bRGBHexString:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)rRGBAHexString:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)mRGBHexADecString:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)URgbahexstringwithaplhaoffset:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)gColorwithsaturation:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)EColorwithbrightness:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)pLightencolorwithvalue:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)XDarkencolorwithvalue:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)sisLightColor:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)qgetRedValue:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)DgetGreenValue:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)ggetBlueValue:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
