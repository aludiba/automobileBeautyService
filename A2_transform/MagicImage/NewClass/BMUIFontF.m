#import "BMUIFontf.h"
@implementation BMUIFontf
+ (BOOL)DIsboldbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)AIsitalicbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)bIsmonospacebm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)pIscolorglyphsbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)KFontweightbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)hFontwithboldbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)xFontwithitalicbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)cFontwithbolditalicbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)TFontwithnormalbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)GFontwithctfontbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)HFontwithcgfontsizebm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)ZCf_Returns_Retainedbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)eCf_Returns_Retainedbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)zLoadfontfrompathbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)rUnloadfontfrompathbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)rLoadfontfromdatabm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)iUnloadfontfromdatabm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)pDatafromfontbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)nDatafromcgfontbm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
