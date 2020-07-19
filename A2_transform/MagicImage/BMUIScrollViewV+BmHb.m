#import "BMUIScrollViewV+BmHb.h"
@implementation BMUIScrollViewV (BmHb)
+ (BOOL)XscrollToTopBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)EscrollToBottomBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)vscrollToLeftBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)LscrollToRightBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)BScrolltotopanimatedBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)mScrolltobottomanimatedBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)xScrolltoleftanimatedBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)AScrolltorightanimatedBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
