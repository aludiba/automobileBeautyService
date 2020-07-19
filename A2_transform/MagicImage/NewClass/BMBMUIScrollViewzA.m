#import "BMBMUIScrollViewzA.h"
@implementation BMBMUIScrollViewzA
+ (BOOL)yZscrolltotopbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)PHscrolltobottombm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)lGscrolltoleftbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)wIscrolltorightbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)RRscrolltotopanimatedbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)xDscrolltobottomanimatedbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)pGscrolltoleftanimatedbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)wEscrolltorightanimatedbm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
