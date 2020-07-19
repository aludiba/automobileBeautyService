#import "BMRACSignalf+BmBmHb.h"
@implementation BMRACSignalf (BmBmHb)
+ (BOOL)VSubscribeBmBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)BSubscribenextBmBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)mSubscribenextsCompletedBmBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)hSubscribenextmErroroCompletedBmBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)ISubscribeerrorBmBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)eSubscribecompletedBmBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)TSubscribenextfErrorBmBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)SSubscribeerrormCompletedBmBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
