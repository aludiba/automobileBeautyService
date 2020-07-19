#import "BMUIScrollViewV+BmBm.h"
@implementation BMUIScrollViewV (BmBm)
+ (BOOL)XscrollToTopBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)EscrollToBottomBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)vscrollToLeftBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)LscrollToRightBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)BScrolltotopanimatedBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)mScrolltobottomanimatedBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)xScrolltoleftanimatedBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)AScrolltorightanimatedBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
