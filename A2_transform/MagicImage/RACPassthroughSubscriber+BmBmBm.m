#import "RACPassthroughSubscriber+BmBmBm.h"
@implementation RACPassthroughSubscriber (BmBmBm)
+ (BOOL)initWithSubscriberSignalDisposableBmBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)sendNextBmBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)sendErrorBmBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)sendCompletedBmBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)didSubscribeWithDisposableBmBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
