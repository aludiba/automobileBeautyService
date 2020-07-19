#import "UIScrollView+AdditionsHb.h"
@implementation UIScrollView (AdditionsHb)
+ (BOOL)setShouldIgnoreScrollingAdjustmentHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)shouldIgnoreScrollingAdjustmentHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)setShouldIgnoreContentInsetAdjustmentHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)shouldIgnoreContentInsetAdjustmentHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)setShouldRestoreScrollViewContentOffsetHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)shouldRestoreScrollViewContentOffsetHb:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
