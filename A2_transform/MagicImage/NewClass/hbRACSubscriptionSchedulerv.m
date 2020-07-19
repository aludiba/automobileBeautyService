#import "hbRACSubscriptionSchedulerv.h"
@implementation hbRACSubscriptionSchedulerv
+ (BOOL)ninit:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)FSchedule:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)GAfterASchedule:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)tAfterMRepeatingeveryEWithleewaySSchedule:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
