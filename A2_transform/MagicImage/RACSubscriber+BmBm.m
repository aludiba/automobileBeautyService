#import "RACSubscriber+BmBm.h"
@implementation RACSubscriber (BmBm)
+ (BOOL)subscriberWithNextErrorCompletedBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)sendNextBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)sendErrorBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)sendCompletedBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)didSubscribeWithDisposableBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
