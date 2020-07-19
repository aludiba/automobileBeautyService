#import "BMRACSerialDisposablex.h"
@implementation BMRACSerialDisposablex
+ (BOOL)UIsdisposedbmbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)PDisposablebmbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)cSetdisposablebmbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)lSerialdisposablewithdisposablebmbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)fInitbmbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)tInitwithblockbmbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)TDeallocbmbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)wSwapindisposablebmbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)aDisposebmbm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
