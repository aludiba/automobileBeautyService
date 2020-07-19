#import "BMRACThreeTupleJ+Bm.h"
@implementation BMRACThreeTupleJ (Bm)
+ (BOOL)EinitBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)DInitwithbackingarrayBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)DTuplebyaddingobjectBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)aPackIFirstPSecondBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)dIsequalBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
