#import "UIScrollView+AdditionsBm.h"
@implementation UIScrollView (AdditionsBm)
+ (BOOL)setShouldIgnoreScrollingAdjustmentBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)shouldIgnoreScrollingAdjustmentBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setShouldIgnoreContentInsetAdjustmentBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)shouldIgnoreContentInsetAdjustmentBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)setShouldRestoreScrollViewContentOffsetBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)shouldRestoreScrollViewContentOffsetBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
