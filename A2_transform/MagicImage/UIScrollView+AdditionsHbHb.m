#import "UIScrollView+AdditionsHbHb.h"
@implementation UIScrollView (AdditionsHbHb)
+ (BOOL)setShouldIgnoreScrollingAdjustmentHbHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)shouldIgnoreScrollingAdjustmentHbHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)setShouldIgnoreContentInsetAdjustmentHbHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)shouldIgnoreContentInsetAdjustmentHbHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)setShouldRestoreScrollViewContentOffsetHbHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)shouldRestoreScrollViewContentOffsetHbHb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
