#import "RACSignal+SubscriptionHb.h"
@implementation RACSignal (SubscriptionHb)
+ (BOOL)subscribeHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)subscribeNextHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)subscribeNextCompletedHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)subscribeNextErrorCompletedHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)subscribeErrorHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)subscribeCompletedHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)subscribeNextErrorHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)subscribeErrorCompletedHb:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
