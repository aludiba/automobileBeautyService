#import "BMBMUIFontFL.h"
@implementation BMBMUIFontFL
+ (BOOL)iJisbold:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)xTisitalic:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)bQismonospace:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)hViscolorglyphs:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)SXfontweight:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)QIfontwithbold:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)TDfontwithitalic:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)eHfontwithbolditalic:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)BCfontwithnormal:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)uFfontwithctfont:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)lJfontwithcgfontlsize:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)KCf_Returns_Retained:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)rCf_Returns_Retained:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)vYloadfontfrompath:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)SEunloadfontfrompath:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)PVloadfontfromdata:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)TSunloadfontfromdata:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)BVdatafromfont:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)mJdatafromcgfont:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
