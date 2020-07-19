#import "BMRACFiveTupley+Bm.h"
@implementation BMRACFiveTupley (Bm)
+ (BOOL)kinitBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)CInitwithbackingarrayBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)aPackfFirstjSecondCThirdhFourthBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)RIsequalBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
