#import "TOCropViewControllerTransitioning+Bm.h"
@implementation TOCropViewControllerTransitioning (Bm)
+ (BOOL)transitionDurationBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)animateTransitionBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)resetBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
