#import "BMRACOneTuplet+Bm.h"
@implementation BMRACOneTuplet (Bm)
+ (BOOL)JInitbmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)JInitwithbackingarraybmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)cTuplebyaddingobjectbmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)rPackbmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)SIsequalbmBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
