#import "hbBMRACSubscriptionSchedulerEP.h"
@implementation hbBMRACSubscriptionSchedulerEP
+ (BOOL)IDinitbm:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)CIschedulebm:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)ESafterrschedulebm:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)LAafterdrepeatingeveryswithleewayfschedulebm:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
