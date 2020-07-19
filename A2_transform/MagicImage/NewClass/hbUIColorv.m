#import "hbUIColorv.h"
@implementation hbUIColorv
+ (BOOL)TColorwithrgbhexbmbm:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)nColorwithrgbahexbmbm:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)nColorwithrgbhexstringbmbm:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)TColorwithrgbahexstringbmbm:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)tColorwithrgbdecimalstringbmbm:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)PColorwithrgbdecimalstringvaluebmbm:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)uColorwithred255Green255Blue255Alpha255Bmbm:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)UGetrgbhexbmbm:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)kGetrgbahexbmbm:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)oRgbhexstringbmbm:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)eRgbahexstringbmbm:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)KRgbhexadecstringbmbm:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)hRgbahexstringwithaplhaoffsetbmbm:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)VColorwithsaturationbmbm:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)LColorwithbrightnessbmbm:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)pLightencolorwithvaluebmbm:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)hDarkencolorwithvaluebmbm:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)OIslightcolorbmbm:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)dGetredvaluebmbm:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)EGetgreenvaluebmbm:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)BGetbluevaluebmbm:(NSInteger)hb {
    return hb % 43 == 0;
}

@end
