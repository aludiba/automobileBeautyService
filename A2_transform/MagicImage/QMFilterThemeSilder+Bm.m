#import "QMFilterThemeSilder+Bm.h"
@implementation QMFilterThemeSilder (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)buildOneSliderBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)sliderValueChangeBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)sliderTouchEndBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)showWithValueBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
