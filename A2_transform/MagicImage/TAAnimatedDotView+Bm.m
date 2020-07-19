#import "TAAnimatedDotView+Bm.h"
@implementation TAAnimatedDotView (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)initWithCoderBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)setDotColorBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)initializationBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)changeActivityStateBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)animateToActiveStateBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)animateToDeactiveStateBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
