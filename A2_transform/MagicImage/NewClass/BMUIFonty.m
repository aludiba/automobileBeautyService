#import "BMUIFonty.h"
@implementation BMUIFonty
+ (BOOL)risBold:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)IisItalic:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)QisMonoSpace:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)TisColorGlyphs:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)qfontWeight:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)BfontWithBold:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)afontWithItalic:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)NfontWithBoldItalic:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)DfontWithNormal:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)jFontwithctfont:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)IFontwithcgfontVSize:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)GCTFontRef CF_RETURNS_RETAINED:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)XCGFontRef CF_RETURNS_RETAINED:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)OLoadfontfrompath:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)VUnloadfontfrompath:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)dLoadfontfromdata:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)qUnloadfontfromdata:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)oDatafromfont:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)vDatafromcgfont:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
