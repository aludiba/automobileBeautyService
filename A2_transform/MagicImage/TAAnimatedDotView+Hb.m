#import "TAAnimatedDotView+Hb.h"
@implementation TAAnimatedDotView (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)initWithFrameHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)initWithCoderHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)setDotColorHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)initializationHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)changeActivityStateHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)animateToActiveStateHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)animateToDeactiveStateHb:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
