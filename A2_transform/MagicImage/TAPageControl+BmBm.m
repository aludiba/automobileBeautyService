#import "TAPageControl+BmBm.h"
@implementation TAPageControl (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)initWithFrameBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)initWithCoderBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)initializationBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)touchesBeganWitheventBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)sizeToFitBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)sizeForNumberOfPagesBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)updateDotsBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)updateFrameBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)updateDotFrameAtindexBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)generateDotViewBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)changeActivityAtindexBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)resetDotViewsBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)hideForSinglePageBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)setNumberOfPagesBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)setSpacingBetweenDotsBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)setCurrentPageBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)setDotImageBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)setCurrentDotImageBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setDotViewClassBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)dotsBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)dotSizeBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
