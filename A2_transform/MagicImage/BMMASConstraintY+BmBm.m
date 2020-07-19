#import "BMMASConstraintY+BmBm.h"
@implementation BMMASConstraintY (BmBm)
+ (BOOL)NinitBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)equalToBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)mas_equalToBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)greaterThanOrEqualToBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)mas_greaterThanOrEqualToBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)lessThanOrEqualToBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)mas_lessThanOrEqualToBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)priorityLowBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)priorityMediumBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)priorityHighBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)insetsBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)insetBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)sizeOffsetBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)centerOffsetBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)offsetBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)valueOffsetBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)mas_offsetBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)kSetlayoutconstantwithvalueBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)TwithBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)YandBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)TAddconstraintwithlayoutattributeBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)mleftBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)dtopBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)BrightBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)dbottomBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)fleadingBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)VtrailingBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)TwidthBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)fheightBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)zcenterXBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)ncenterYBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)PbaselineBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)UfirstBaselineBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)blastBaselineBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)rleftMarginBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)xrightMarginBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)XtopMarginBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)ebottomMarginBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)UleadingMarginBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)BtrailingMarginBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)gcenterXWithinMarginsBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)WcenterYWithinMarginsBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)multipliedByBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)dividedByBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)priorityBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)equalToWithRelationBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)keyBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)DSetinsetsBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)gSetinsetBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)uSetsizeoffsetBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)lSetcenteroffsetBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)dSetoffsetBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)manimatorBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)uactivateBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)wdeactivateBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)cinstallBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)iuninstallBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
