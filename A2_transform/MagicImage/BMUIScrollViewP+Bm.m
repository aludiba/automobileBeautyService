#import "BMUIScrollViewP+Bm.h"
@implementation BMUIScrollViewP (Bm)
+ (BOOL)TscrollToTopBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)sscrollToBottomBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)cscrollToLeftBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)jscrollToRightBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)DScrolltotopanimatedBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)HScrolltobottomanimatedBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)fScrolltoleftanimatedBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)dScrolltorightanimatedBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
