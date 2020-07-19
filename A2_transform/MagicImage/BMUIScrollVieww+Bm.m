#import "BMUIScrollVieww+Bm.h"
@implementation BMUIScrollVieww (Bm)
+ (BOOL)qSetshouldignorescrollingadjustmentBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)bshouldIgnoreScrollingAdjustmentBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)mSetshouldignorecontentinsetadjustmentBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)HshouldIgnoreContentInsetAdjustmentBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)USetshouldrestorescrollviewcontentoffsetBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)WshouldRestoreScrollViewContentOffsetBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
