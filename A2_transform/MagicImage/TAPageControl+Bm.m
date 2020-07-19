#import "TAPageControl+Bm.h"
@implementation TAPageControl (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)initWithCoderBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)initializationBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)touchesBeganWitheventBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)sizeToFitBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)sizeForNumberOfPagesBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)updateDotsBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)updateFrameBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)updateDotFrameAtindexBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)generateDotViewBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)changeActivityAtindexBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)resetDotViewsBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)hideForSinglePageBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)setNumberOfPagesBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)setSpacingBetweenDotsBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setCurrentPageBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)setDotImageBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setCurrentDotImageBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)setDotViewClassBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)dotsBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)dotSizeBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
