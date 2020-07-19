#import "UIScrollView+YYAddBmBm.h"
@implementation UIScrollView (YYAddBmBm)
+ (BOOL)scrollToTopBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)scrollToBottomBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)scrollToLeftBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)scrollToRightBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)scrollToTopAnimatedBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)scrollToBottomAnimatedBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)scrollToLeftAnimatedBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)scrollToRightAnimatedBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
