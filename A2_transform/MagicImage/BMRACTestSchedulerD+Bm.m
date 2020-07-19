#import "BMRACTestSchedulerD+Bm.h"
@implementation BMRACTestSchedulerD (Bm)
+ (BOOL)rinitBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)ZdeallocBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)RstepBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)HStepBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)PstepAllBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)rScheduleBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)kAfterDScheduleBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)UAfterHRepeatingeveryIWithleewayhScheduleBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
