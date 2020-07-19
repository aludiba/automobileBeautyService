#import "BMUIFontZ+Bm.h"
@implementation BMUIFontZ (Bm)
+ (BOOL)NIsboldbmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)rIsitalicbmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)YIsmonospacebmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)VIscolorglyphsbmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)iFontweightbmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)cFontwithboldbmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)cFontwithitalicbmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)GFontwithbolditalicbmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)bFontwithnormalbmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)KFontwithctfontbmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)dFontwithcgfontsizebmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)CCf_Returns_RetainedbmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)VCf_Returns_RetainedbmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)gLoadfontfrompathbmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)FUnloadfontfrompathbmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)ULoadfontfromdatabmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)wUnloadfontfromdatabmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)dDatafromfontbmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)eDatafromcgfontbmBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
