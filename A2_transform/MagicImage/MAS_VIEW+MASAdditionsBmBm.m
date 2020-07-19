#import "MAS_VIEW+MASAdditionsBmBm.h"
@implementation MAS_VIEW (MASAdditionsBmBm)
+ (BOOL)mas_makeConstraintsBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)mas_updateConstraintsBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)mas_remakeConstraintsBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)mas_leftBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)mas_topBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)mas_rightBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)mas_bottomBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)mas_leadingBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)mas_trailingBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)mas_widthBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)mas_heightBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)mas_centerXBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)mas_centerYBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)mas_baselineBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)mas_attributeBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)mas_firstBaselineBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)mas_lastBaselineBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)mas_leftMarginBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)mas_rightMarginBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)mas_topMarginBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)mas_bottomMarginBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)mas_leadingMarginBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)mas_trailingMarginBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)mas_centerXWithinMarginsBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)mas_centerYWithinMarginsBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)mas_safeAreaLayoutGuideBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)mas_safeAreaLayoutGuideTopBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)mas_safeAreaLayoutGuideBottomBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)mas_safeAreaLayoutGuideLeftBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)mas_safeAreaLayoutGuideRightBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)mas_keyBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)setMas_keyBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)mas_closestCommonSuperviewBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
