#import "BMUIScrollViewg+Hb.h"
@implementation BMUIScrollViewg (Hb)
+ (BOOL)tSetshouldignorescrollingadjustmentHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)sshouldIgnoreScrollingAdjustmentHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)bSetshouldignorecontentinsetadjustmentHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)DshouldIgnoreContentInsetAdjustmentHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)LSetshouldrestorescrollviewcontentoffsetHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)SshouldRestoreScrollViewContentOffsetHb:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
