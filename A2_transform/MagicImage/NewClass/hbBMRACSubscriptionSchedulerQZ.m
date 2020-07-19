#import "hbBMRACSubscriptionSchedulerQZ.h"
@implementation hbBMRACSubscriptionSchedulerQZ
+ (BOOL)YEinitbm:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)KXschedulebm:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)APafterkschedulebm:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)OXafterarepeatingeverykwithleewayeschedulebm:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
