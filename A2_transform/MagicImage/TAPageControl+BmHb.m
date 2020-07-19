#import "TAPageControl+BmHb.h"
@implementation TAPageControl (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)initWithFrameBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)initWithCoderBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)initializationBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)touchesBeganWitheventBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)sizeToFitBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)sizeForNumberOfPagesBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)updateDotsBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)updateFrameBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)updateDotFrameAtindexBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)generateDotViewBmHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)changeActivityAtindexBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)resetDotViewsBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)hideForSinglePageBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)setNumberOfPagesBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)setSpacingBetweenDotsBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)setCurrentPageBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)setDotImageBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)setCurrentDotImageBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)setDotViewClassBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)dotsBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)dotSizeBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}

@end
