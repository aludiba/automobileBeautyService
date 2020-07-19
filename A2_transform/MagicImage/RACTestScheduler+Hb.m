#import "RACTestScheduler+Hb.h"
@implementation RACTestScheduler (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)deallocHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)stepHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)stepHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)stepAllHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)scheduleHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)afterScheduleHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)afterRepeatingeveryWithleewayScheduleHb:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
