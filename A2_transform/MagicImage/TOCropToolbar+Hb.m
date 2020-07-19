#import "TOCropToolbar+Hb.h"
@implementation TOCropToolbar (Hb)
+ (BOOL)initWithFrameHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)setupHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)layoutSubviewsHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)layoutToolbarButtonsWithsamebuttonsizeIncontainerrectHorizontallyHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)buttonTappedHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)clampButtonFrameHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)setClampButtonHiddenHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)setClampButtonGlowingHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)setRotateCounterClockwiseButtonHiddenHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)resetButtonEnabledHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)setResetButtonEnabledHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)doneButtonFrameHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)setCancelTextButtonTitleHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)setDoneTextButtonTitleHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)doneImageHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)cancelImageHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)rotateCCWImageHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)rotateCWImageHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)resetImageHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)clampImageHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)setRotateClockwiseButtonHiddenHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)rotateButtonHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)setStatusBarHeightInsetHb:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
