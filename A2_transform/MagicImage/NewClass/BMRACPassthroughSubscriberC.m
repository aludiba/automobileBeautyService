#import "BMRACPassthroughSubscriberC.h"
@implementation BMRACPassthroughSubscriberC
+ (BOOL)zInitwithsubscribersignaldisposablebm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)USendnextbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)tSenderrorbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)ZSendcompletedbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)xDidsubscribewithdisposablebm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
