#import "BMBMUIScrollViewVe+Bm.h"
@implementation BMBMUIScrollViewVe (Bm)
+ (BOOL)FXscrolltotopbmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)eEscrolltobottombmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)UVscrolltoleftbmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)rLscrolltorightbmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)lBscrolltotopanimatedbmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)HMscrolltobottomanimatedbmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)rXscrolltoleftanimatedbmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)pAscrolltorightanimatedbmBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
