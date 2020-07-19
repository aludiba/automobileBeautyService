#import "MASConstraint+BmBm.h"
@implementation MASConstraint (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)equalToBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)mas_equalToBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)greaterThanOrEqualToBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)mas_greaterThanOrEqualToBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)lessThanOrEqualToBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)mas_lessThanOrEqualToBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)priorityLowBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)priorityMediumBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)priorityHighBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)insetsBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)insetBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)sizeOffsetBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)centerOffsetBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)offsetBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)valueOffsetBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)mas_offsetBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)setLayoutConstantWithValueBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)withBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)andBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)addConstraintWithLayoutAttributeBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)leftBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)topBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)rightBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)bottomBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)leadingBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)trailingBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)widthBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)heightBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)centerXBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)centerYBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)baselineBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)firstBaselineBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)lastBaselineBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)leftMarginBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)rightMarginBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)topMarginBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)bottomMarginBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)leadingMarginBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)trailingMarginBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)centerXWithinMarginsBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)centerYWithinMarginsBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)multipliedByBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)dividedByBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)priorityBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)equalToWithRelationBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)keyBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setInsetsBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setInsetBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setSizeOffsetBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)setCenterOffsetBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)setOffsetBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)animatorBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)activateBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)deactivateBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)installBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)uninstallBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
