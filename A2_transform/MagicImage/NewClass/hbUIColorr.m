#import "hbUIColorr.h"
@implementation hbUIColorr
+ (BOOL)cColorwithrgbhexbm:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)eColorwithrgbahexbm:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)JColorwithrgbhexstringbm:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)MColorwithrgbahexstringbm:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)sColorwithrgbdecimalstringbm:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)eColorwithrgbdecimalstringvaluebm:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)rColorwithred255Green255Blue255Alpha255Bm:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)wGetrgbhexbm:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)mGetrgbahexbm:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)zRgbhexstringbm:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)SRgbahexstringbm:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)rRgbhexadecstringbm:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)oRgbahexstringwithaplhaoffsetbm:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)eColorwithsaturationbm:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)LColorwithbrightnessbm:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)zLightencolorwithvaluebm:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)ODarkencolorwithvaluebm:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)MIslightcolorbm:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)fGetredvaluebm:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)zGetgreenvaluebm:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)NGetbluevaluebm:(NSInteger)hb {
    return hb % 13 == 0;
}

@end
