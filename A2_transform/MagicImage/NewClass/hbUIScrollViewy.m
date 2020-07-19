#import "hbUIScrollViewy.h"
@implementation hbUIScrollViewy
+ (BOOL)dscrollToTop:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)bscrollToBottom:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)pscrollToLeft:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)AscrollToRight:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)CScrolltotopanimated:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)TScrolltobottomanimated:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)eScrolltoleftanimated:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)dScrolltorightanimated:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
