#import "BMRACSignalf+Bm.h"
@implementation BMRACSignalf (Bm)
+ (BOOL)VSubscribeBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)BSubscribenextBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)mSubscribenextsCompletedBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)hSubscribenextmErroroCompletedBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)ISubscribeerrorBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)eSubscribecompletedBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)TSubscribenextfErrorBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)SSubscribeerrormCompletedBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
