#import "MISlideVC+Bm.h"
@implementation MISlideVC (Bm)
+ (BOOL)superExistNavBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)superExistTabBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)bottomLineBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)menuHeightBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)pageNumberOfItemBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)bottomLineWidthBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)labelArysBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)viewDidLoadBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)customBaseViewBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)customTopViewBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)customBottomViewBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)scrollViewDidEndDeceleratingBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)itemClickTapBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)motionChangePageBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)contentScrollToCenterBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)menuScrollToCenterBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)menuUpdateStyleBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)menuUpdateBottomLineBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
