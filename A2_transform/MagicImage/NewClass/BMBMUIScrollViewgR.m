#import "BMBMUIScrollViewgR.h"
@implementation BMBMUIScrollViewgR
+ (BOOL)GTsetshouldignorescrollingadjustmentbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)JSshouldignorescrollingadjustmentbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)EBsetshouldignorecontentinsetadjustmentbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)YDshouldignorecontentinsetadjustmentbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)ULsetshouldrestorescrollviewcontentoffsetbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)WSshouldrestorescrollviewcontentoffsetbm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
