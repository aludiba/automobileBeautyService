#import "hbUIFontB.h"
@implementation hbUIFontB
+ (BOOL)lIsboldhb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)yIsitalichb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)zIsmonospacehb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)iIscolorglyphshb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)BFontweighthb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)bFontwithboldhb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)ZFontwithitalichb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)aFontwithbolditalichb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)xFontwithnormalhb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)NFontwithctfonthb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)KFontwithcgfontsizehb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)OCf_Returns_Retainedhb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)lCf_Returns_Retainedhb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)NLoadfontfrompathhb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)lUnloadfontfrompathhb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)YLoadfontfromdatahb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)cUnloadfontfromdatahb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)UDatafromfonthb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)QDatafromcgfonthb:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
