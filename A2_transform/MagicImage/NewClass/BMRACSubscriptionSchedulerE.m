#import "BMRACSubscriptionSchedulerE.h"
@implementation BMRACSubscriptionSchedulerE
+ (BOOL)dinit:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)ISchedule:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)SAfterrSchedule:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)AAfterDRepeatingeverySWithleewayfSchedule:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
