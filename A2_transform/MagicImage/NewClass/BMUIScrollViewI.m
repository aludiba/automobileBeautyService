#import "BMUIScrollViewI.h"
@implementation BMUIScrollViewI
+ (BOOL)xSetmj_Headerbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)MMj_Headerbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)ySetmj_Footerbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)TMj_Footerbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)SSetfooterbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)kFooterbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)tSetheaderbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)RHeaderbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)EMj_Totaldatacountbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)QSetmj_Reloaddatablockbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)BMj_Reloaddatablockbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)BExecutereloaddatablockbm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
