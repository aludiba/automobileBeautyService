#import "BMRACCompoundDisposableC.h"
@implementation BMRACCompoundDisposableC
+ (BOOL)sIsdisposedbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)NCompounddisposablebm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)FCompounddisposablewithdisposablesbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)aInitbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)uInitwithdisposablesbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)NInitwithblockbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)iDeallocbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)oAdddisposablebm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)YRemovedisposablebm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)uDisposebm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
