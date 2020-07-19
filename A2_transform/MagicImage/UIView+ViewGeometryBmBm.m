#import "UIView+ViewGeometryBmBm.h"
@implementation UIView (ViewGeometryBmBm)
+ (BOOL)originBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setOriginBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)sizeBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setSizeBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)bottomRightBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)bottomLeftBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)topRightBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)heightBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setHeightBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)widthBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setWidthBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)topBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setTopBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)leftBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setLeftBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)bottomBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setBottomBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)rightBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setRightBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)moveByBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)scaleByBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)fitInSizeBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)convertViewToImageBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
