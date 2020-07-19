#import "BMUIFontF+Bm.h"
@implementation BMUIFontF (Bm)
+ (BOOL)jisBoldBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)TisItalicBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)QisMonoSpaceBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)VisColorGlyphsBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)XfontWeightBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)ifontWithBoldBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)dfontWithItalicBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)HfontWithBoldItalicBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)cfontWithNormalBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)FFontwithctfontBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)JFontwithcgfontlSizeBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)CF_RETURNS_RETAINEDBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)CF_RETURNS_RETAINEDBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)yLoadfontfrompathBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)EUnloadfontfrompathBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)VLoadfontfromdataBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)sUnloadfontfromdataBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)VDatafromfontBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)JDatafromcgfontBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
