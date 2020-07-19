#import "UIView+SizeBmBm.h"
@implementation UIView (SizeBmBm)
+ (BOOL)setXBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setYBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)xBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)yBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)setCenterXBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)centerXBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setCenterYBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)centerYBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)setWidthBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)setHeightBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)heightBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)widthBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setSizeBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)sizeBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)setOriginBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)originBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
