#import "BMRACChannelTerminalp.h"
@implementation BMRACChannelTerminalp
+ (BOOL)TInitwithvaluesxOtherterminal:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)kSubscribe:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)fSendnext:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)FSenderror:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)AsendCompleted:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)lDidsubscribewithdisposable:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
