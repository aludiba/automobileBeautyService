#import "BMRACPassthroughSubscriberb.h"
@implementation BMRACPassthroughSubscriberb
+ (BOOL)DInitwithsubscribersignaldisposablebm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)lSendnextbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)zSenderrorbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)KSendcompletedbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)oDidsubscribewithdisposablebm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
