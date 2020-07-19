#import "hbRACImmediateSchedulerb.h"
@implementation hbRACImmediateSchedulerb
+ (BOOL)bInithb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)hSchedulehb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)CAfterschedulehb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)ZAfterrepeatingeverywithleewayschedulehb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)ASchedulerecursiveblockhb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
