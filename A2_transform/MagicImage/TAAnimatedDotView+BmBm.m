#import "TAAnimatedDotView+BmBm.h"
@implementation TAAnimatedDotView (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)initWithFrameBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)initWithCoderBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)setDotColorBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)initializationBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)changeActivityStateBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)animateToActiveStateBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)animateToDeactiveStateBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
