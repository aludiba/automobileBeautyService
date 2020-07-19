#import "BMRACPassthroughSubscriberC+BmHb.h"
@implementation BMRACPassthroughSubscriberC (BmHb)
+ (BOOL)zInitwithsubscribersignaldisposablebmBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)USendnextbmBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)tSenderrorbmBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)ZSendcompletedbmBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)xDidsubscribewithdisposablebmBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}

@end
