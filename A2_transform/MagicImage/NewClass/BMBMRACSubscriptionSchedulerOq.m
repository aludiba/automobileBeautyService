#import "BMBMRACSubscriptionSchedulerOq.h"
@implementation BMBMRACSubscriptionSchedulerOq
+ (BOOL)SEinitbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)cMschedulebm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)CDafterschedulebm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)NMafterrepeatingeverywithleewayschedulebm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
