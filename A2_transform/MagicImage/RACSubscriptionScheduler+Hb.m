#import "RACSubscriptionScheduler+Hb.h"
@implementation RACSubscriptionScheduler (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)scheduleHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)afterScheduleHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)afterRepeatingeveryWithleewayScheduleHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
