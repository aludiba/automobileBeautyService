#import "RACScheduler+Bm.h"
@implementation RACScheduler (Bm)
+ (BOOL)descriptionBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)initWithNameBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)immediateSchedulerBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)mainThreadSchedulerBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)schedulerWithPriorityNameBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)schedulerWithPriorityBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)schedulerBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)subscriptionSchedulerBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)isOnMainThreadBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)currentSchedulerBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)scheduleBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)afterScheduleBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)afterDelayScheduleBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)afterRepeatingeveryWithleewayScheduleBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)scheduleRecursiveBlockBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)scheduleRecursiveBlockAddingtodisposableBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)performAsCurrentSchedulerBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
