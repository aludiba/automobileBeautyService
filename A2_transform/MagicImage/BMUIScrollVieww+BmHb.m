#import "BMUIScrollVieww+BmHb.h"
@implementation BMUIScrollVieww (BmHb)
+ (BOOL)qSetshouldignorescrollingadjustmentBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)bshouldIgnoreScrollingAdjustmentBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)mSetshouldignorecontentinsetadjustmentBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)HshouldIgnoreContentInsetAdjustmentBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)USetshouldrestorescrollviewcontentoffsetBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)WshouldRestoreScrollViewContentOffsetBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
