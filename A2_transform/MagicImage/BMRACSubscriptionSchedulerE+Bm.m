#import "BMRACSubscriptionSchedulerE+Bm.h"
@implementation BMRACSubscriptionSchedulerE (Bm)
+ (BOOL)dinitBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)IScheduleBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)SAfterrScheduleBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)AAfterDRepeatingeverySWithleewayfScheduleBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
