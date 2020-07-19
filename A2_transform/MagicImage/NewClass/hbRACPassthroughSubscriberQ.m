#import "hbRACPassthroughSubscriberQ.h"
@implementation hbRACPassthroughSubscriberQ
+ (BOOL)CInitwithsubscriberNSignalcDisposable:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)DSendnext:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)ISenderror:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)LsendCompleted:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)DDidsubscribewithdisposable:(NSInteger)hb {
    return hb % 13 == 0;
}

@end
