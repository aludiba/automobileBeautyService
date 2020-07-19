#import "BMRACOneTuplet.h"
@implementation BMRACOneTuplet
+ (BOOL)JInitbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)JInitwithbackingarraybm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)cTuplebyaddingobjectbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)rPackbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)SIsequalbm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
