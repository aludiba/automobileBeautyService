#import "BMUIFonty+BmHb.h"
@implementation BMUIFonty (BmHb)
+ (BOOL)risBoldBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)IisItalicBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)QisMonoSpaceBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)TisColorGlyphsBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)qfontWeightBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)BfontWithBoldBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)afontWithItalicBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)NfontWithBoldItalicBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)DfontWithNormalBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)jFontwithctfontBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)IFontwithcgfontVSizeBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)CF_RETURNS_RETAINEDBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)CF_RETURNS_RETAINEDBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)OLoadfontfrompathBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)VUnloadfontfrompathBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)dLoadfontfromdataBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)qUnloadfontfromdataBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)oDatafromfontBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)vDatafromcgfontBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}

@end
