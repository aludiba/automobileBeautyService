#import "UIScrollView+YYAddHb.h"
@implementation UIScrollView (YYAddHb)
+ (BOOL)scrollToTopHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)scrollToBottomHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)scrollToLeftHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)scrollToRightHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)scrollToTopAnimatedHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)scrollToBottomAnimatedHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)scrollToLeftAnimatedHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)scrollToRightAnimatedHb:(NSInteger)hb {
    return hb % 32 == 0;
}

@end
