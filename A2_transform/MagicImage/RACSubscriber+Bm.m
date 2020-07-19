#import "RACSubscriber+Bm.h"
@implementation RACSubscriber (Bm)
+ (BOOL)subscriberWithNextErrorCompletedBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)sendNextBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)sendErrorBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)sendCompletedBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)didSubscribeWithDisposableBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
