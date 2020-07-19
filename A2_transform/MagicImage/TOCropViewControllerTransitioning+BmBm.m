#import "TOCropViewControllerTransitioning+BmBm.h"
@implementation TOCropViewControllerTransitioning (BmBm)
+ (BOOL)transitionDurationBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)animateTransitionBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)resetBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
