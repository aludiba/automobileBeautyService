#import "UIScrollView+AdditionsBmBm.h"
@implementation UIScrollView (AdditionsBmBm)
+ (BOOL)setShouldIgnoreScrollingAdjustmentBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)shouldIgnoreScrollingAdjustmentBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)setShouldIgnoreContentInsetAdjustmentBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)shouldIgnoreContentInsetAdjustmentBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)setShouldRestoreScrollViewContentOffsetBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)shouldRestoreScrollViewContentOffsetBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
