#import "hbRACImmediateSchedulerS.h"
@implementation hbRACImmediateSchedulerS
+ (BOOL)binit:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)zSchedule:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)fAfterNSchedule:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)TAfterGRepeatingeveryPWithleewaycSchedule:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)ASchedulerecursiveblock:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
