#import "BMBMUIScrollViewVe.h"
@implementation BMBMUIScrollViewVe
+ (BOOL)FXscrolltotopbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)eEscrolltobottombm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)UVscrolltoleftbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)rLscrolltorightbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)lBscrolltotopanimatedbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)HMscrolltobottomanimatedbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)rXscrolltoleftanimatedbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)pAscrolltorightanimatedbm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
