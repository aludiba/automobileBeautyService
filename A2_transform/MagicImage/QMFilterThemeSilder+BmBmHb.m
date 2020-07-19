#import "QMFilterThemeSilder+BmBmHb.h"
@implementation QMFilterThemeSilder (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)initWithFrameBmBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)buildOneSliderBmBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)sliderValueChangeBmBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)sliderTouchEndBmBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)showWithValueBmBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}

@end
