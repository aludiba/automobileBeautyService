#import "BMRACChannelTerminall.h"
@implementation BMRACChannelTerminall
+ (BOOL)YInitwithvaluesotherterminalbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)KSubscribebm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)rSendnextbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)USenderrorbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)jSendcompletedbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)qDidsubscribewithdisposablebm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
