#import "BMBMUIScrollViewzz.h"
@implementation BMBMUIScrollViewzz
+ (BOOL)CZscrolltotopbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)xHscrolltobottombm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)GGscrolltoleftbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)zIscrolltorightbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)ORscrolltotopanimatedbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)UDscrolltobottomanimatedbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)fGscrolltoleftanimatedbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)ZEscrolltorightanimatedbm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
