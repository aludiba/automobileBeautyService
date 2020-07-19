#import "MAS_VIEW+MASAdditionsHb.h"
@implementation MAS_VIEW (MASAdditionsHb)
+ (BOOL)mas_makeConstraintsHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)mas_updateConstraintsHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)mas_remakeConstraintsHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)mas_leftHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)mas_topHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)mas_rightHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)mas_bottomHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)mas_leadingHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)mas_trailingHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)mas_widthHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)mas_heightHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)mas_centerXHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)mas_centerYHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)mas_baselineHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)(NSLayoutAttribute))mas_attributeHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)mas_firstBaselineHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)mas_lastBaselineHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)mas_leftMarginHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)mas_rightMarginHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)mas_topMarginHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)mas_bottomMarginHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)mas_leadingMarginHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)mas_trailingMarginHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)mas_centerXWithinMarginsHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)mas_centerYWithinMarginsHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)mas_safeAreaLayoutGuideHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)mas_safeAreaLayoutGuideTopHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)mas_safeAreaLayoutGuideBottomHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)mas_safeAreaLayoutGuideLeftHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)mas_safeAreaLayoutGuideRightHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)mas_keyHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)setMas_keyHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)mas_closestCommonSuperviewHb:(NSInteger)hb {
    return hb % 17 == 0;
}

@end
