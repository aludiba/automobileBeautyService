#import "BMRACSerialDisposableU.h"
@implementation BMRACSerialDisposableU
+ (BOOL)zIsdisposedbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)ODisposablebm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)RSetdisposablebm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)cSerialdisposablewithdisposablebm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)eInitbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)sInitwithblockbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)nDeallocbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)MSwapindisposablebm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)VDisposebm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
