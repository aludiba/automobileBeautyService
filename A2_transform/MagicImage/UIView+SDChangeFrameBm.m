#import "UIView+SDChangeFrameBm.h"
@implementation UIView (SDChangeFrameBm)
+ (BOOL)shouldReadjustFrameBeforeStoreCacheBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setShouldReadjustFrameBeforeStoreCacheBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)left_sdBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)setLeft_sdBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)top_sdBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)setTop_sdBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)right_sdBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)setRight_sdBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)bottom_sdBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setBottom_sdBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)centerX_sdBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)setCenterX_sdBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)centerY_sdBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)setCenterY_sdBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)width_sdBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)setWidth_sdBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)height_sdBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setHeight_sdBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)origin_sdBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setOrigin_sdBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)size_sdBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)setSize_sdBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setWidthBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)setHeightBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setSizeBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)leftBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setLeftBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)rightBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setRightBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)widthBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)heightBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)topBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setTopBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)bottomBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)setBottomBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)centerXBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)setCenterXBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)centerYBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)setCenterYBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)originBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)setOriginBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)sizeBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
