#import "RACPassthroughSubscriber+Bm.h"
@implementation RACPassthroughSubscriber (Bm)
+ (BOOL)initWithSubscriberSignalDisposableBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)sendNextBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)sendErrorBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)sendCompletedBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)didSubscribeWithDisposableBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
