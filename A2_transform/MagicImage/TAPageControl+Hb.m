#import "TAPageControl+Hb.h"
@implementation TAPageControl (Hb)
+ (BOOL)initHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)initWithFrameHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)initWithCoderHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)initializationHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)touchesBeganWitheventHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)sizeToFitHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)sizeForNumberOfPagesHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)updateDotsHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)updateFrameHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)updateDotFrameAtindexHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)generateDotViewHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)changeActivityAtindexHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)resetDotViewsHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)hideForSinglePageHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)setNumberOfPagesHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)setSpacingBetweenDotsHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)setCurrentPageHb:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)setDotImageHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)setCurrentDotImageHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)setDotViewClassHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)dotsHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)dotSizeHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
