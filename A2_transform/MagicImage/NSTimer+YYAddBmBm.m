#import "NSTimer+YYAddBmBm.h"
@implementation NSTimer (YYAddBmBm)
+ (BOOL)_yy_ExecBlockBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)scheduledTimerWithTimeIntervalBlockRepeatsBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)timerWithTimeIntervalBlockRepeatsBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
