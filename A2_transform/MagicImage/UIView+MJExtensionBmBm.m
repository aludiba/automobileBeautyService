#import "UIView+MJExtensionBmBm.h"
@implementation UIView (MJExtensionBmBm)
+ (BOOL)setMj_xBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)mj_xBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setMj_yBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)mj_yBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)setMj_wBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)mj_wBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)setMj_hBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)mj_hBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)setMj_sizeBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)mj_sizeBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)setMj_originBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)mj_originBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
