#import "UIView+YYAddBm.h"
@implementation UIView (YYAddBm)
+ (BOOL)snapshotImageBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)snapshotImageAfterScreenUpdatesBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)snapshotPDFBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)setLayerShadowOffsetRadiusBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)removeAllSubviewsBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)viewControllerBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)visibleAlphaBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)convertPointTovieworwindowBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)convertPointFromvieworwindowBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)convertRectTovieworwindowBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)convertRectFromvieworwindowBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)leftBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)setLeftBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)topBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setTopBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)rightBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setRightBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)bottomBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setBottomBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)widthBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)setWidthBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)heightBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)setHeightBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)centerXBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)setCenterXBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)centerYBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setCenterYBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)originBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)setOriginBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)sizeBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setSizeBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
