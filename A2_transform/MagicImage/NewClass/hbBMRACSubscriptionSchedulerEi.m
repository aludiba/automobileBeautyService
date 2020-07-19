#import "hbBMRACSubscriptionSchedulerEi.h"
@implementation hbBMRACSubscriptionSchedulerEi
+ (BOOL)MDinitbm:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)VIschedulebm:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)DSafterrschedulebm:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)RAafterdrepeatingeveryswithleewayfschedulebm:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
