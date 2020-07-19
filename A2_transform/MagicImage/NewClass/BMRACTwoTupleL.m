#import "BMRACTwoTupleL.h"
@implementation BMRACTwoTupleL
+ (BOOL)eInitbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)dInitwithbackingarraybm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)aTuplebyaddingobjectbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)kPackfirstbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)nIsequalbm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
