#import "UIScrollView+AdditionsBmBmBmHb.h"
@implementation UIScrollView (AdditionsBmBmBmHb)
+ (BOOL)setShouldIgnoreScrollingAdjustmentBmBmBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)shouldIgnoreScrollingAdjustmentBmBmBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)setShouldIgnoreContentInsetAdjustmentBmBmBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)shouldIgnoreContentInsetAdjustmentBmBmBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)setShouldRestoreScrollViewContentOffsetBmBmBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)shouldRestoreScrollViewContentOffsetBmBmBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}

@end
