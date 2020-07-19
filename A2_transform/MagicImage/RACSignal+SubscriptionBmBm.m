#import "RACSignal+SubscriptionBmBm.h"
@implementation RACSignal (SubscriptionBmBm)
+ (BOOL)subscribeBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)subscribeNextBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)subscribeNextCompletedBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)subscribeNextErrorCompletedBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)subscribeErrorBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)subscribeCompletedBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)subscribeNextErrorBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)subscribeErrorCompletedBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
