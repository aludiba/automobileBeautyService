#import "BMUIScrollViewg+Bm.h"
@implementation BMUIScrollViewg (Bm)
+ (BOOL)tSetshouldignorescrollingadjustmentBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)sshouldIgnoreScrollingAdjustmentBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)bSetshouldignorecontentinsetadjustmentBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)DshouldIgnoreContentInsetAdjustmentBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)LSetshouldrestorescrollviewcontentoffsetBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)SshouldRestoreScrollViewContentOffsetBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
