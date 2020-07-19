#import "RACSignal+SubscriptionBm.h"
@implementation RACSignal (SubscriptionBm)
+ (BOOL)subscribeBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)subscribeNextBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)subscribeNextCompletedBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)subscribeNextErrorCompletedBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)subscribeErrorBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)subscribeCompletedBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)subscribeNextErrorBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)subscribeErrorCompletedBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
