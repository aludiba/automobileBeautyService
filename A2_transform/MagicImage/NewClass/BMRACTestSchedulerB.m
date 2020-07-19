#import "BMRACTestSchedulerB.h"
@implementation BMRACTestSchedulerB
+ (BOOL)TInitbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)sDeallocbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)JStepbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)mStepbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)WStepallbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)PSchedulebm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)ZAfterschedulebm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)LAfterrepeatingeverywithleewayschedulebm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
