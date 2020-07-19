#import "TAAnimatedDotView+BmHb.h"
@implementation TAAnimatedDotView (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)initWithFrameBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)initWithCoderBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)setDotColorBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)initializationBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)changeActivityStateBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)animateToActiveStateBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)animateToDeactiveStateBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
