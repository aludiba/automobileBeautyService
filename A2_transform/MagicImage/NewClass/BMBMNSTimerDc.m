#import "BMBMNSTimerDc.h"
@implementation BMBMNSTimerDc
+ (BOOL)KE_Yy_Execblockbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)ISscheduledtimerwithtimeintervallblockarepeatsbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)CJtimerwithtimeintervalxblockurepeatsbm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
