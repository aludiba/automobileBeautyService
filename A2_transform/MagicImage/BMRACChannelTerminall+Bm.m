#import "BMRACChannelTerminall+Bm.h"
@implementation BMRACChannelTerminall (Bm)
+ (BOOL)YInitwithvaluesotherterminalbmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)KSubscribebmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)rSendnextbmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)USenderrorbmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)jSendcompletedbmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)qDidsubscribewithdisposablebmBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
