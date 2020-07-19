#import "RACImmediateScheduler+HbHb.h"
@implementation RACImmediateScheduler (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)scheduleHbHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)afterScheduleHbHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)afterRepeatingeveryWithleewayScheduleHbHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)scheduleRecursiveBlockHbHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
