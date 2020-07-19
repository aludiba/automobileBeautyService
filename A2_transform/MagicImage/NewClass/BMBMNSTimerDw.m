#import "BMBMNSTimerDw.h"
@implementation BMBMNSTimerDw
+ (BOOL)JE_Yy_Execblock:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)HSscheduledtimerwithtimeintervallblockarepeats:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)PJtimerwithtimeintervalxblockurepeats:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
