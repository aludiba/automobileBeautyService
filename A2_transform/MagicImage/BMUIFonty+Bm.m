#import "BMUIFonty+Bm.h"
@implementation BMUIFonty (Bm)
+ (BOOL)risBoldBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)IisItalicBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)QisMonoSpaceBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)TisColorGlyphsBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)qfontWeightBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)BfontWithBoldBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)afontWithItalicBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)NfontWithBoldItalicBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)DfontWithNormalBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)jFontwithctfontBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)IFontwithcgfontVSizeBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)CF_RETURNS_RETAINEDBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)CF_RETURNS_RETAINEDBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)OLoadfontfrompathBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)VUnloadfontfrompathBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)dLoadfontfromdataBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)qUnloadfontfromdataBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)oDatafromfontBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)vDatafromcgfontBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
