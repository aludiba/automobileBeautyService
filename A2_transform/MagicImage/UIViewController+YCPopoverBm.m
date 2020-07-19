#import "UIViewController+YCPopoverBm.h"
@implementation UIViewController (YCPopoverBm)
+ (BOOL)popoverAnimatorBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)setPopoverAnimatorBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)yc_bottomPresentControllerPresentedheightCompletehandleBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)yc_centerPresentControllerPresentedsizeCompletehandleBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
