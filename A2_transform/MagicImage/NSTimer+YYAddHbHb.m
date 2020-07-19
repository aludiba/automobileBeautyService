#import "NSTimer+YYAddHbHb.h"
@implementation NSTimer (YYAddHbHb)
+ (BOOL)_yy_ExecBlockHbHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)scheduledTimerWithTimeIntervalBlockRepeatsHbHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)timerWithTimeIntervalBlockRepeatsHbHb:(NSInteger)hb {
    return hb % 8 == 0;
}

@end
