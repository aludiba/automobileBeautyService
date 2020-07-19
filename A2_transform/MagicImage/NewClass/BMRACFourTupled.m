#import "BMRACFourTupled.h"
@implementation BMRACFourTupled
+ (BOOL)BInitbmbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)mInitwithbackingarraybmbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)cTuplebyaddingobjectbmbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)dPackfirstsecondthirdbmbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)pIsequalbmbm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
