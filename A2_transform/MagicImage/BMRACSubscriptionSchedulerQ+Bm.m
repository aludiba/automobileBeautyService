#import "BMRACSubscriptionSchedulerQ+Bm.h"
@implementation BMRACSubscriptionSchedulerQ (Bm)
+ (BOOL)EinitBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)xScheduleBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)PAfterkScheduleBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)xAfteraRepeatingeverykWithleewayeScheduleBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
