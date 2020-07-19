#import "BMUIScrollViewF+Bm.h"
@implementation BMUIScrollViewF (Bm)
+ (BOOL)LSetshouldignorescrollingadjustmentbmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)xShouldignorescrollingadjustmentbmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)eSetshouldignorecontentinsetadjustmentbmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)IShouldignorecontentinsetadjustmentbmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)cSetshouldrestorescrollviewcontentoffsetbmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)bShouldrestorescrollviewcontentoffsetbmBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
