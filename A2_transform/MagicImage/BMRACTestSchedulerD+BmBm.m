#import "BMRACTestSchedulerD+BmBm.h"
@implementation BMRACTestSchedulerD (BmBm)
+ (BOOL)rinitBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)ZdeallocBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)RstepBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)HStepBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)PstepAllBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)rScheduleBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)kAfterDScheduleBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)UAfterHRepeatingeveryIWithleewayhScheduleBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
