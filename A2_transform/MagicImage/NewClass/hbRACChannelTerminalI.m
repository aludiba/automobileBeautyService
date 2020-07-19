#import "hbRACChannelTerminalI.h"
@implementation hbRACChannelTerminalI
+ (BOOL)vInitwithvaluescOtherterminal:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)KSubscribe:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)FSendnext:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)ZSenderror:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)dsendCompleted:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)BDidsubscribewithdisposable:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
