#import "UIScrollView+SDAutoContentSizeBmBm.h"
@implementation UIScrollView (SDAutoContentSizeBmBm)
+ (BOOL)setupAutoContentSizeWithBottomViewBottommarginBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)setupAutoContentSizeWithRightViewRightmarginBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
