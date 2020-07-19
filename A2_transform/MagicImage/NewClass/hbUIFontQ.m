#import "hbUIFontQ.h"
@implementation hbUIFontQ
+ (BOOL)BisBold:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)RisItalic:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)qisMonoSpace:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)kisColorGlyphs:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)gfontWeight:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)sfontWithBold:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)tfontWithItalic:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)efontWithBoldItalic:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)IfontWithNormal:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)vFontwithctfont:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)mFontwithcgfontaSize:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)ACTFontRef CF_RETURNS_RETAINED:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)ACGFontRef CF_RETURNS_RETAINED:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)qLoadfontfrompath:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)SUnloadfontfrompath:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)PLoadfontfromdata:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)dUnloadfontfromdata:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)kDatafromfont:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)FDatafromcgfont:(NSInteger)hb {
    return hb % 36 == 0;
}

@end
