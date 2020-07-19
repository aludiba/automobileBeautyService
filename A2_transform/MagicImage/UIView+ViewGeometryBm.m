#import "UIView+ViewGeometryBm.h"
@implementation UIView (ViewGeometryBm)
+ (BOOL)originBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)setOriginBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)sizeBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setSizeBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)bottomRightBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)bottomLeftBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)topRightBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)heightBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)setHeightBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)widthBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setWidthBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)topBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)setTopBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)leftBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)setLeftBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)bottomBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)setBottomBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)rightBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setRightBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)moveByBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)scaleByBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)fitInSizeBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)convertViewToImageBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
