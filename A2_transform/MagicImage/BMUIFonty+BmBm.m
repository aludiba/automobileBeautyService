#import "BMUIFonty+BmBm.h"
@implementation BMUIFonty (BmBm)
+ (BOOL)risBoldBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)IisItalicBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)QisMonoSpaceBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)TisColorGlyphsBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)qfontWeightBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)BfontWithBoldBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)afontWithItalicBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)NfontWithBoldItalicBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)DfontWithNormalBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)jFontwithctfontBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)IFontwithcgfontVSizeBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)CF_RETURNS_RETAINEDBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)CF_RETURNS_RETAINEDBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)OLoadfontfrompathBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)VUnloadfontfrompathBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)dLoadfontfromdataBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)qUnloadfontfromdataBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)oDatafromfontBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)vDatafromcgfontBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
