#import "NSTimer+YYAddBm.h"
@implementation NSTimer (YYAddBm)
+ (BOOL)_yy_ExecBlockBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)scheduledTimerWithTimeIntervalBlockRepeatsBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)timerWithTimeIntervalBlockRepeatsBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
