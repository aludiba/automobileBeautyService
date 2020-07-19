#import "TOCropToolbar+Bm.h"
@implementation TOCropToolbar (Bm)
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setupBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)layoutSubviewsBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)layoutToolbarButtonsWithsamebuttonsizeIncontainerrectHorizontallyBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)buttonTappedBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)clampButtonFrameBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setClampButtonHiddenBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setClampButtonGlowingBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)setRotateCounterClockwiseButtonHiddenBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)resetButtonEnabledBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setResetButtonEnabledBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)doneButtonFrameBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setCancelTextButtonTitleBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)setDoneTextButtonTitleBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)doneImageBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)cancelImageBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)rotateCCWImageBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)rotateCWImageBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)resetImageBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)clampImageBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)setRotateClockwiseButtonHiddenBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)rotateButtonBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)setStatusBarHeightInsetBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
