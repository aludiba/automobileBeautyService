#import "UIView+YYAddHb.h"
@implementation UIView (YYAddHb)
+ (BOOL)snapshotImageHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)snapshotImageAfterScreenUpdatesHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)snapshotPDFHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)setLayerShadowOffsetRadiusHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)removeAllSubviewsHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)viewControllerHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)visibleAlphaHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)convertPointTovieworwindowHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)convertPointFromvieworwindowHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)convertRectTovieworwindowHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)convertRectFromvieworwindowHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)leftHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)setLeftHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)topHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)setTopHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)rightHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)setRightHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)bottomHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)setBottomHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)widthHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)setWidthHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)heightHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)setHeightHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)centerXHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)setCenterXHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)centerYHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)setCenterYHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)originHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)setOriginHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)sizeHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)setSizeHb:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
