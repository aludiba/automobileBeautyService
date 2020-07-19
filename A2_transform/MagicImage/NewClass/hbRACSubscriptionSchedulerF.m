#import "hbRACSubscriptionSchedulerF.h"
@implementation hbRACSubscriptionSchedulerF
+ (BOOL)Iinit:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)DSchedule:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)DAfterDSchedule:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)TAfterERepeatingeverycWithleewayASchedule:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
