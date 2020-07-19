#import "BMRACChannelTerminalp+BmBm.h"
@implementation BMRACChannelTerminalp (BmBm)
+ (BOOL)TInitwithvaluesxOtherterminalBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)kSubscribeBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)fSendnextBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)FSenderrorBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)AsendCompletedBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)lDidsubscribewithdisposableBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
