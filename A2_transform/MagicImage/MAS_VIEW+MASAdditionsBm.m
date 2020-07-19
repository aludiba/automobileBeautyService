#import "MAS_VIEW+MASAdditionsBm.h"
@implementation MAS_VIEW (MASAdditionsBm)
+ (BOOL)mas_makeConstraintsBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)mas_updateConstraintsBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)mas_remakeConstraintsBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)mas_leftBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)mas_topBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)mas_rightBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)mas_bottomBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)mas_leadingBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)mas_trailingBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)mas_widthBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)mas_heightBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)mas_centerXBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)mas_centerYBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)mas_baselineBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)(NSLayoutAttribute))mas_attributeBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)mas_firstBaselineBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)mas_lastBaselineBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)mas_leftMarginBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)mas_rightMarginBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)mas_topMarginBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)mas_bottomMarginBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)mas_leadingMarginBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)mas_trailingMarginBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)mas_centerXWithinMarginsBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)mas_centerYWithinMarginsBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)mas_safeAreaLayoutGuideBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)mas_safeAreaLayoutGuideTopBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)mas_safeAreaLayoutGuideBottomBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)mas_safeAreaLayoutGuideLeftBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)mas_safeAreaLayoutGuideRightBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)mas_keyBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setMas_keyBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)mas_closestCommonSuperviewBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
