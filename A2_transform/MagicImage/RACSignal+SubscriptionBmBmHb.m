#import "RACSignal+SubscriptionBmBmHb.h"
@implementation RACSignal (SubscriptionBmBmHb)
+ (BOOL)subscribeBmBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)subscribeNextBmBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)subscribeNextCompletedBmBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)subscribeNextErrorCompletedBmBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)subscribeErrorBmBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)subscribeCompletedBmBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)subscribeNextErrorBmBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)subscribeErrorCompletedBmBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
