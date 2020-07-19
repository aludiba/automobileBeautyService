#import "hbUIFontP.h"
@implementation hbUIFontP
+ (BOOL)zIsboldhb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)oIsitalichb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)SIsmonospacehb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)yIscolorglyphshb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)UFontweighthb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)kFontwithboldhb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)OFontwithitalichb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)zFontwithbolditalichb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)wFontwithnormalhb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)gFontwithctfonthb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)sFontwithcgfontsizehb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)sCf_Returns_Retainedhb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)tCf_Returns_Retainedhb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)fLoadfontfrompathhb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)aUnloadfontfrompathhb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)qLoadfontfromdatahb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)VUnloadfontfromdatahb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)IDatafromfonthb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)LDatafromcgfonthb:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
