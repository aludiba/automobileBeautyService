#import "BMBMUIScrollViewko.h"
@implementation BMBMUIScrollViewko
+ (BOOL)YOscrolltotopbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)MUscrolltobottombm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)VBscrolltoleftbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)oDscrolltorightbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)DBscrolltotopanimatedbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)oUscrolltobottomanimatedbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)JPscrolltoleftanimatedbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)QFscrolltorightanimatedbm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
