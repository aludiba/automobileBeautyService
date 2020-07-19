#import "hbUIColoru.h"
@implementation hbUIColoru
+ (BOOL)EColorwithrgbhexbm:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)jColorwithrgbahexbm:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)oColorwithrgbhexstringbm:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)VColorwithrgbahexstringbm:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)fColorwithrgbdecimalstringbm:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)QColorwithrgbdecimalstringvaluebm:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)EColorwithred255Green255Blue255Alpha255Bm:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)GGetrgbhexbm:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)LGetrgbahexbm:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)qRgbhexstringbm:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)YRgbahexstringbm:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)mRgbhexadecstringbm:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)RRgbahexstringwithaplhaoffsetbm:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)CColorwithsaturationbm:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)UColorwithbrightnessbm:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)ELightencolorwithvaluebm:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)WDarkencolorwithvaluebm:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)dIslightcolorbm:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)lGetredvaluebm:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)MGetgreenvaluebm:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)PGetbluevaluebm:(NSInteger)hb {
    return hb % 48 == 0;
}

@end
