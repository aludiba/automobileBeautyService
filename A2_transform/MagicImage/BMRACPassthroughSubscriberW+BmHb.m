#import "BMRACPassthroughSubscriberW+BmHb.h"
@implementation BMRACPassthroughSubscriberW (BmHb)
+ (BOOL)AInitwithsubscriberWSignalCDisposableBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)pSendnextBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)hSenderrorBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)ssendCompletedBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)SDidsubscribewithdisposableBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
