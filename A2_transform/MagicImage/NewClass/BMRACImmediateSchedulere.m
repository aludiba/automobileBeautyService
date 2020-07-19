#import "BMRACImmediateSchedulere.h"
@implementation BMRACImmediateSchedulere
+ (BOOL)Yinit:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)YSchedule:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)dAfterLSchedule:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)nAfterQRepeatingeveryqWithleewayMSchedule:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)ISchedulerecursiveblock:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
