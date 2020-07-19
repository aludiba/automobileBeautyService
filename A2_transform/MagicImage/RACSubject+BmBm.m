#import "RACSubject+BmBm.h"
@implementation RACSubject (BmBm)
+ (BOOL)subjectBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)subscribeBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)enumerateSubscribersUsingBlockBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)sendNextBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)sendErrorBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)sendCompletedBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)didSubscribeWithDisposableBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
