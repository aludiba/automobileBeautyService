#import "hbBMRACSerialDisposableNq.h"
@implementation hbBMRACSerialDisposableNq
+ (BOOL)ZNisdisposedbm:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)ZMdisposablebm:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)vTsetdisposablebm:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)GEserialdisposablewithdisposablebm:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)mGinitbm:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)aFinitwithblockbm:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)LAdeallocbm:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)kTswapindisposablebm:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)yOdisposebm:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
