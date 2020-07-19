#import "BMRACChannelTerminalj.h"
@implementation BMRACChannelTerminalj
+ (BOOL)MInitwithvaluesoOtherterminal:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)ySubscribe:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)RSendnext:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)kSenderror:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)BsendCompleted:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)hDidsubscribewithdisposable:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
