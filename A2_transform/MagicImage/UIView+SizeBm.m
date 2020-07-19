#import "UIView+SizeBm.h"
@implementation UIView (SizeBm)
+ (BOOL)setXBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setYBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)xBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)yBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)setCenterXBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)centerXBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setCenterYBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)centerYBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setWidthBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setHeightBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)heightBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)widthBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)setSizeBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)sizeBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)setOriginBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)originBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
