#import "UIScrollView+YYAddBm.h"
@implementation UIScrollView (YYAddBm)
+ (BOOL)scrollToTopBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)scrollToBottomBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)scrollToLeftBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)scrollToRightBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)scrollToTopAnimatedBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)scrollToBottomAnimatedBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)scrollToLeftAnimatedBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)scrollToRightAnimatedBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
