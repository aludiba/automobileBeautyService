#import "RACSubject+BmBmBm.h"
@implementation RACSubject (BmBmBm)
+ (BOOL)subjectBmBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)deallocBmBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)subscribeBmBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)enumerateSubscribersUsingBlockBmBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)sendNextBmBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)sendErrorBmBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)sendCompletedBmBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)didSubscribeWithDisposableBmBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
