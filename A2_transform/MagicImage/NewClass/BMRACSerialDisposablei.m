#import "BMRACSerialDisposablei.h"
@implementation BMRACSerialDisposablei
+ (BOOL)pIsdisposedbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)JDisposablebm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)RSetdisposablebm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)ZSerialdisposablewithdisposablebm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)JInitbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)TInitwithblockbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)DDeallocbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)BSwapindisposablebm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)zDisposebm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
