#import "QMFilterThemeSilder+BmBm.h"
@implementation QMFilterThemeSilder (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)initWithFrameBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)buildOneSliderBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)sliderValueChangeBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)sliderTouchEndBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)showWithValueBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
