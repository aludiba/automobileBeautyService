#import "BMRACChannelTerminalW.h"
@implementation BMRACChannelTerminalW
+ (BOOL)VInitwithvaluesotherterminalbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)fSubscribebm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)oSendnextbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)rSenderrorbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)pSendcompletedbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)qDidsubscribewithdisposablebm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
