#import "BMUIFontZ.h"
@implementation BMUIFontZ
+ (BOOL)NIsboldbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)rIsitalicbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)YIsmonospacebm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)VIscolorglyphsbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)iFontweightbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)cFontwithboldbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)cFontwithitalicbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)GFontwithbolditalicbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)bFontwithnormalbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)KFontwithctfontbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)dFontwithcgfontsizebm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)CCf_Returns_Retainedbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)VCf_Returns_Retainedbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)gLoadfontfrompathbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)FUnloadfontfrompathbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)ULoadfontfromdatabm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)wUnloadfontfromdatabm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)dDatafromfontbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)eDatafromcgfontbm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
