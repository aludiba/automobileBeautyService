#import "BMRACOneTupleq+Bm.h"
@implementation BMRACOneTupleq (Bm)
+ (BOOL)HinitBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)NInitwithbackingarrayBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)yTuplebyaddingobjectBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)xPackBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)DIsequalBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
