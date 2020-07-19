#import "BMBMBMUIScrollViewVeX.h"
@implementation BMBMBMUIScrollViewVeX
+ (BOOL)vFxscrolltotopbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)GEescrolltobottombm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)ZUvscrolltoleftbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)MRlscrolltorightbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)nLbscrolltotopanimatedbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)EHmscrolltobottomanimatedbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)IRxscrolltoleftanimatedbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)xPascrolltorightanimatedbm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
