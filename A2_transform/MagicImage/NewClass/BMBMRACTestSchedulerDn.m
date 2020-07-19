#import "BMBMRACTestSchedulerDn.h"
@implementation BMBMRACTestSchedulerDn
+ (BOOL)LRinit:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)aZdealloc:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)PRstep:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)MHstep:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)QPstepall:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)vRschedule:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)wKafterdschedule:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)xUafterhrepeatingeveryiwithleewayhschedule:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
