#import "BMBMRACPassthroughSubscriberWm+Bm.h"
@implementation BMBMRACPassthroughSubscriberWm (Bm)
+ (BOOL)CAinitwithsubscriberwsignalcdisposablebmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)VPsendnextbmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)sHsenderrorbmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)pSsendcompletedbmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)iSdidsubscribewithdisposablebmBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
