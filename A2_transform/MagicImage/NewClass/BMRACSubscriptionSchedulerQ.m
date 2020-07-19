#import "BMRACSubscriptionSchedulerq.h"
@implementation BMRACSubscriptionSchedulerq
+ (BOOL)cInitbmbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)vSchedulebmbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)rAfterschedulebmbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)EAfterrepeatingeverywithleewayschedulebmbm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
