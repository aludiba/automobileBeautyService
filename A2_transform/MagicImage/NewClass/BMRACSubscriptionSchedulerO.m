#import "BMRACSubscriptionSchedulerO.h"
@implementation BMRACSubscriptionSchedulerO
+ (BOOL)EInitbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)MSchedulebm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)dAfterschedulebm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)MAfterrepeatingeverywithleewayschedulebm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
