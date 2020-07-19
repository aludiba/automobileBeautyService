#import "UIScrollView+YYAddBmBmBm.h"
@implementation UIScrollView (YYAddBmBmBm)
+ (BOOL)scrollToTopBmBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)scrollToBottomBmBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)scrollToLeftBmBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)scrollToRightBmBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)scrollToTopAnimatedBmBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)scrollToBottomAnimatedBmBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)scrollToLeftAnimatedBmBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)scrollToRightAnimatedBmBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
