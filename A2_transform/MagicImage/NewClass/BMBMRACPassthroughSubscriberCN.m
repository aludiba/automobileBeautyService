#import "BMBMRACPassthroughSubscriberCN.h"
@implementation BMBMRACPassthroughSubscriberCN
+ (BOOL)dZinitwithsubscribersignaldisposablebm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)JUsendnextbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)WTsenderrorbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)VZsendcompletedbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)jXdidsubscribewithdisposablebm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
