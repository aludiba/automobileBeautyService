#import "BMBMBMUIScrollViewzAU.h"
@implementation BMBMBMUIScrollViewzAU
+ (BOOL)UYzscrolltotopbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)yPhscrolltobottombm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)XLgscrolltoleftbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)PWiscrolltorightbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)WRrscrolltotopanimatedbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)NXdscrolltobottomanimatedbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)NPgscrolltoleftanimatedbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)eWescrolltorightanimatedbm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
