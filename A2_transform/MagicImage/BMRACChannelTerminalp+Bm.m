#import "BMRACChannelTerminalp+Bm.h"
@implementation BMRACChannelTerminalp (Bm)
+ (BOOL)TInitwithvaluesxOtherterminalBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)kSubscribeBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)fSendnextBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)FSenderrorBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)AsendCompletedBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)lDidsubscribewithdisposableBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
