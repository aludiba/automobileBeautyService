#import "BMBMUIScrollViewVn+Bm.h"
@implementation BMBMUIScrollViewVn (Bm)
+ (BOOL)cXscrolltotopBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)VEscrolltobottomBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)TVscrolltoleftBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)KLscrolltorightBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)TBscrolltotopanimatedBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)YMscrolltobottomanimatedBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)SXscrolltoleftanimatedBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)DAscrolltorightanimatedBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
