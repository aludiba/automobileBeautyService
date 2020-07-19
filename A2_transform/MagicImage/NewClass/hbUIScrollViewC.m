#import "hbUIScrollViewC.h"
@implementation hbUIScrollViewC
+ (BOOL)IscrollToTop:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)JscrollToBottom:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)ascrollToLeft:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)vscrollToRight:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)MScrolltotopanimated:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)LScrolltobottomanimated:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)PScrolltoleftanimated:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)fScrolltorightanimated:(NSInteger)hb {
    return hb % 8 == 0;
}

@end
