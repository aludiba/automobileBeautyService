#import "hbRACPassthroughSubscriberc.h"
@implementation hbRACPassthroughSubscriberc
+ (BOOL)wInitwithsubscriberVSignaltDisposable:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)gSendnext:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)uSenderror:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)bsendCompleted:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)fDidsubscribewithdisposable:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
