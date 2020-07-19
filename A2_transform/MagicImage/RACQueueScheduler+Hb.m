#import "RACQueueScheduler+Hb.h"
@implementation RACQueueScheduler (Hb)
+ (BOOL)initWithNameQueueHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)wallTimeWithDateHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)scheduleHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)afterScheduleHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)afterRepeatingeveryWithleewayScheduleHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
