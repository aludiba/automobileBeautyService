#import "BMUIFontg.h"
@implementation BMUIFontg
+ (BOOL)pIsboldbmbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)PIsitalicbmbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)xIsmonospacebmbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)zIscolorglyphsbmbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)kFontweightbmbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)RFontwithboldbmbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)NFontwithitalicbmbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)uFontwithbolditalicbmbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)lFontwithnormalbmbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)WFontwithctfontbmbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)ZFontwithcgfontsizebmbm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)ACf_Returns_Retainedbmbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)ACf_Returns_Retainedbmbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)ULoadfontfrompathbmbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)EUnloadfontfrompathbmbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)xLoadfontfromdatabmbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)UUnloadfontfromdatabmbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)lDatafromfontbmbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)RDatafromcgfontbmbm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
