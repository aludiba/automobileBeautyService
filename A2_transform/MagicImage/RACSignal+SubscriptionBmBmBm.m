#import "RACSignal+SubscriptionBmBmBm.h"
@implementation RACSignal (SubscriptionBmBmBm)
+ (BOOL)subscribeBmBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)subscribeNextBmBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)subscribeNextCompletedBmBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)subscribeNextErrorCompletedBmBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)subscribeErrorBmBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)subscribeCompletedBmBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)subscribeNextErrorBmBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)subscribeErrorCompletedBmBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
