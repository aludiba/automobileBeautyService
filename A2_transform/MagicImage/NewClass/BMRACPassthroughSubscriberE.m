#import "BMRACPassthroughSubscribere.h"
@implementation BMRACPassthroughSubscribere
+ (BOOL)lInitwithsubscribersignaldisposablebmbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)cSendnextbmbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)WSenderrorbmbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)iSendcompletedbmbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)zDidsubscribewithdisposablebmbm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
