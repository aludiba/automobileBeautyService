#import "NSTimer+YYAddHb.h"
@implementation NSTimer (YYAddHb)
+ (BOOL)_yy_ExecBlockHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)scheduledTimerWithTimeIntervalBlockRepeatsHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)timerWithTimeIntervalBlockRepeatsHb:(NSInteger)hb {
    return hb % 48 == 0;
}

@end
