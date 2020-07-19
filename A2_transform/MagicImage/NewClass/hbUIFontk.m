#import "hbUIFontk.h"
@implementation hbUIFontk
+ (BOOL)DisBold:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)IisItalic:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)visMonoSpace:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)iisColorGlyphs:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)QfontWeight:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)VfontWithBold:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)HfontWithItalic:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)GfontWithBoldItalic:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)sfontWithNormal:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)lFontwithctfont:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)EFontwithcgfontkSize:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)iCTFontRef CF_RETURNS_RETAINED:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)vCGFontRef CF_RETURNS_RETAINED:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)TLoadfontfrompath:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)EUnloadfontfrompath:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)eLoadfontfromdata:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)lUnloadfontfromdata:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)VDatafromfont:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)lDatafromcgfont:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
