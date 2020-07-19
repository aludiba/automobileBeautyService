#import "BMUIScrollViewV+Bm.h"
@implementation BMUIScrollViewV (Bm)
+ (BOOL)XscrollToTopBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)EscrollToBottomBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)vscrollToLeftBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)LscrollToRightBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)BScrolltotopanimatedBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)mScrolltobottomanimatedBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)xScrolltoleftanimatedBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)AScrolltorightanimatedBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
