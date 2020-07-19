#import "BMRACFourTupleo+Bm.h"
@implementation BMRACFourTupleo (Bm)
+ (BOOL)linitBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)VInitwithbackingarrayBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)fTuplebyaddingobjectBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)QPackqFirstPSecondAThirdBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)tIsequalBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
