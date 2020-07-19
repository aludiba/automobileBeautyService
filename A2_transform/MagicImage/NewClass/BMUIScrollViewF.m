#import "BMUIScrollViewF.h"
@implementation BMUIScrollViewF
+ (BOOL)LSetshouldignorescrollingadjustmentbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)xShouldignorescrollingadjustmentbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)eSetshouldignorecontentinsetadjustmentbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)IShouldignorecontentinsetadjustmentbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)cSetshouldrestorescrollviewcontentoffsetbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)bShouldrestorescrollviewcontentoffsetbm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
