#import "BMRACPassthroughSubscriberW.h"
@implementation BMRACPassthroughSubscriberW
+ (BOOL)AInitwithsubscriberWSignalCDisposable:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)pSendnext:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)hSenderror:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)ssendCompleted:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)SDidsubscribewithdisposable:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
