#import "BMRACSignalp+BmBm.h"
@implementation BMRACSignalp (BmBm)
+ (BOOL)ESubscribeBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)BSubscribenextBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)jSubscribenextvCompletedBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)eSubscribenextUErrormCompletedBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)kSubscribeerrorBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)GSubscribecompletedBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)ASubscribenextZErrorBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)TSubscribeerrorcCompletedBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
