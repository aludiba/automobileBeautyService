#import "BMBMRACSubscriptionSchedulerQW+Bm.h"
@implementation BMBMRACSubscriptionSchedulerQW (Bm)
+ (BOOL)hEinitbmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)pXschedulebmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)BPafterkschedulebmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)EXafterarepeatingeverykwithleewayeschedulebmBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
