#import "RACSubject+Bm.h"
@implementation RACSubject (Bm)
+ (BOOL)subjectBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)subscribeBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)enumerateSubscribersUsingBlockBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)sendNextBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)sendErrorBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)sendCompletedBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)didSubscribeWithDisposableBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
