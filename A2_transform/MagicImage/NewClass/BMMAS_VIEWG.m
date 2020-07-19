#import "BMMAS_VIEWG.h"
@implementation BMMAS_VIEWG
+ (BOOL)YMas_Makeconstraints:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)AMas_Updateconstraints:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)yMas_Remakeconstraints:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)imas_left:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)Imas_top:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)tmas_right:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)cmas_bottom:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)Fmas_leading:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)Zmas_trailing:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)dmas_width:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)Fmas_height:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)Gmas_centerX:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)nmas_centerY:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)rmas_baseline:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)S(NSLayoutAttribute))mas_attribute:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)mmas_firstBaseline:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)Kmas_lastBaseline:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)imas_leftMargin:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)Omas_rightMargin:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)Mmas_topMargin:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)ymas_bottomMargin:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)Umas_leadingMargin:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)Ymas_trailingMargin:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)Omas_centerXWithinMargins:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)Cmas_centerYWithinMargins:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)lmas_safeAreaLayoutGuide:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)Emas_safeAreaLayoutGuideTop:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)lmas_safeAreaLayoutGuideBottom:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)Rmas_safeAreaLayoutGuideLeft:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)Ymas_safeAreaLayoutGuideRight:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)Xmas_key:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)cSetmas_Key:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)xMas_Closestcommonsuperview:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
