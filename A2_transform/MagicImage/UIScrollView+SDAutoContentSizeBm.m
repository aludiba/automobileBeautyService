#import "UIScrollView+SDAutoContentSizeBm.h"
@implementation UIScrollView (SDAutoContentSizeBm)
+ (BOOL)setupAutoContentSizeWithBottomViewBottommarginBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setupAutoContentSizeWithRightViewRightmarginBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
