#import "RACPassthroughSubscriber+BmBm.h"
@implementation RACPassthroughSubscriber (BmBm)
+ (BOOL)initWithSubscriberSignalDisposableBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)sendNextBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)sendErrorBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)sendCompletedBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)didSubscribeWithDisposableBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
