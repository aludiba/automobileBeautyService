#import "BMRACCompoundDisposableU.h"
@implementation BMRACCompoundDisposableU
+ (BOOL)ZIsdisposedbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)pCompounddisposablebm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)ICompounddisposablewithdisposablesbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)UInitbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)MInitwithdisposablesbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)vInitwithblockbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)dDeallocbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)qAdddisposablebm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)CRemovedisposablebm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)XDisposebm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
