#import "BMRACImmediateSchedulerI.h"
@implementation BMRACImmediateSchedulerI
+ (BOOL)rInitbmbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)bSchedulebmbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)ZAfterschedulebmbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)nAfterrepeatingeverywithleewayschedulebmbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)GSchedulerecursiveblockbmbm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
