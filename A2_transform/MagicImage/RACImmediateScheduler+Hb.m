#import "RACImmediateScheduler+Hb.h"
@implementation RACImmediateScheduler (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)scheduleHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)afterScheduleHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)afterRepeatingeveryWithleewayScheduleHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)scheduleRecursiveBlockHb:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
