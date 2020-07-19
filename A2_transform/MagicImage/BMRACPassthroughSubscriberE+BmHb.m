#import "BMRACPassthroughSubscriberE+BmHb.h"
@implementation BMRACPassthroughSubscriberE (BmHb)
+ (BOOL)fInitwithsubscriberQSignalKDisposableBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)kSendnextBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)HSenderrorBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)gsendCompletedBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)aDidsubscribewithdisposableBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
