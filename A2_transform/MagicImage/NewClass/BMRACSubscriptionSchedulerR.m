#import "BMRACSubscriptionSchedulerR.h"
@implementation BMRACSubscriptionSchedulerR
+ (BOOL)AInitbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)rSchedulebm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)uAfterschedulebm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)dAfterrepeatingeverywithleewayschedulebm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
