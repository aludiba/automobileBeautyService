#import "BMBMRACPassthroughSubscriberWG.h"
@implementation BMBMRACPassthroughSubscriberWG
+ (BOOL)oAinitwithsubscriberwsignalcdisposable:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)zPsendnext:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)xHsenderror:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)rSsendcompleted:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)aSdidsubscribewithdisposable:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
