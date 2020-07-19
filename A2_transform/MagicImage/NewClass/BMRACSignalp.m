#import "BMRACSignalp.h"
@implementation BMRACSignalp
+ (BOOL)ESubscribe:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)BSubscribenext:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)jSubscribenextvCompleted:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)eSubscribenextUErrormCompleted:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)kSubscribeerror:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)GSubscribecompleted:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)ASubscribenextZError:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)TSubscribeerrorcCompleted:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
