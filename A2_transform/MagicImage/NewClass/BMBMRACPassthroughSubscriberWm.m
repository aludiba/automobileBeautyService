#import "BMBMRACPassthroughSubscriberWm.h"
@implementation BMBMRACPassthroughSubscriberWm
+ (BOOL)CAinitwithsubscriberwsignalcdisposablebm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)VPsendnextbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)sHsenderrorbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)pSsendcompletedbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)iSdidsubscribewithdisposablebm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
