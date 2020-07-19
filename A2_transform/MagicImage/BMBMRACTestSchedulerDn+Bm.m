#import "BMBMRACTestSchedulerDn+Bm.h"
@implementation BMBMRACTestSchedulerDn (Bm)
+ (BOOL)LRinitBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)aZdeallocBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)PRstepBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)MHstepBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)QPstepallBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)vRscheduleBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)wKafterdscheduleBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)xUafterhrepeatingeveryiwithleewayhscheduleBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
