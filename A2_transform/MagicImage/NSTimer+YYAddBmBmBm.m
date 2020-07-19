#import "NSTimer+YYAddBmBmBm.h"
@implementation NSTimer (YYAddBmBmBm)
+ (BOOL)_yy_ExecBlockBmBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)scheduledTimerWithTimeIntervalBlockRepeatsBmBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)timerWithTimeIntervalBlockRepeatsBmBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
