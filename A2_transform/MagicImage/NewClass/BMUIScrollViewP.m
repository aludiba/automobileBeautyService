#import "BMUIScrollViewP.h"
@implementation BMUIScrollViewP
+ (BOOL)TscrollToTop:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)sscrollToBottom:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)cscrollToLeft:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)jscrollToRight:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)DScrolltotopanimated:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)HScrolltobottomanimated:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)fScrolltoleftanimated:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)dScrolltorightanimated:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
