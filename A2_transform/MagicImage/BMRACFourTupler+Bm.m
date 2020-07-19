#import "BMRACFourTupler+Bm.h"
@implementation BMRACFourTupler (Bm)
+ (BOOL)ginitBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)PInitwithbackingarrayBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)VTuplebyaddingobjectBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)rPackxFirstLSecondRThirdBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)wIsequalBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
