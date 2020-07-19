#import "TOCropViewControllerTransitioning+Hb.h"
@implementation TOCropViewControllerTransitioning (Hb)
+ (BOOL)transitionDurationHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)animateTransitionHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)resetHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
