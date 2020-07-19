#import "BMUIScrollViewV+BmBmHb.h"
@implementation BMUIScrollViewV (BmBmHb)
+ (BOOL)XscrollToTopBmBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)EscrollToBottomBmBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)vscrollToLeftBmBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)LscrollToRightBmBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)BScrolltotopanimatedBmBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)mScrolltobottomanimatedBmBmHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)xScrolltoleftanimatedBmBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)AScrolltorightanimatedBmBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
