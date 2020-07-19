#import "BMBMRACTestSchedulerDR.h"
@implementation BMBMRACTestSchedulerDR
+ (BOOL)jRinit:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)FZdealloc:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)GRstep:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)rHstep:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)pPstepall:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)sRschedule:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)OKafterdschedule:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)KUafterhrepeatingeveryiwithleewayhschedule:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
