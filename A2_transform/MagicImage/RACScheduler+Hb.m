#import "RACScheduler+Hb.h"
@implementation RACScheduler (Hb)
+ (BOOL)descriptionHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)initWithNameHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)immediateSchedulerHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)mainThreadSchedulerHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)schedulerWithPriorityNameHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)schedulerWithPriorityHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)schedulerHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)subscriptionSchedulerHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)isOnMainThreadHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)currentSchedulerHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)scheduleHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)afterScheduleHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)afterDelayScheduleHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)afterRepeatingeveryWithleewayScheduleHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)scheduleRecursiveBlockHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)scheduleRecursiveBlockAddingtodisposableHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)performAsCurrentSchedulerHb:(NSInteger)hb {
    return hb % 47 == 0;
}

@end
