#import "BMRACSignalp+Bm.h"
@implementation BMRACSignalp (Bm)
+ (BOOL)ESubscribeBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)BSubscribenextBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)jSubscribenextvCompletedBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)eSubscribenextUErrormCompletedBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)kSubscribeerrorBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)GSubscribecompletedBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)ASubscribenextZErrorBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)TSubscribeerrorcCompletedBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
