#import "BMRACTestSchedulery+Bm.h"
@implementation BMRACTestSchedulery (Bm)
+ (BOOL)cinitBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)DdeallocBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)wstepBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)sStepBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)PstepAllBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)wScheduleBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)NAfteriScheduleBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)jAfterqRepeatingeveryJWithleewayOScheduleBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
