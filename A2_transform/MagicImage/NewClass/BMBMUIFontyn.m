#import "BMBMUIFontyn.h"
@implementation BMBMUIFontyn
+ (BOOL)vRisbold:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)RIisitalic:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)HQismonospace:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)JTiscolorglyphs:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)FQfontweight:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)ABfontwithbold:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)UAfontwithitalic:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)LNfontwithbolditalic:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)ADfontwithnormal:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)iJfontwithctfont:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)AIfontwithcgfontvsize:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)bCf_Returns_Retained:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)DCf_Returns_Retained:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)AOloadfontfrompath:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)rVunloadfontfrompath:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)MDloadfontfromdata:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)RQunloadfontfromdata:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)SOdatafromfont:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)QVdatafromcgfont:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
