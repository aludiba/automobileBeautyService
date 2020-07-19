#import "hbRACImmediateSchedulerk.h"
@implementation hbRACImmediateSchedulerk
+ (BOOL)yinit:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)NSchedule:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)tAfterXSchedule:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)xAftergRepeatingeveryXWithleewaymSchedule:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)uSchedulerecursiveblock:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
