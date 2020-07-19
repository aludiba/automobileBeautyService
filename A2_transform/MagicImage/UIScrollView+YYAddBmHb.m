#import "UIScrollView+YYAddBmHb.h"
@implementation UIScrollView (YYAddBmHb)
+ (BOOL)scrollToTopBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)scrollToBottomBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)scrollToLeftBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)scrollToRightBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)scrollToTopAnimatedBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)scrollToBottomAnimatedBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)scrollToLeftAnimatedBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)scrollToRightAnimatedBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
