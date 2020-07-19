#import "UIView+MJExtensionBm.h"
@implementation UIView (MJExtensionBm)
+ (BOOL)setMj_xBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)mj_xBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)setMj_yBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)mj_yBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setMj_wBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)mj_wBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setMj_hBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)mj_hBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setMj_sizeBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)mj_sizeBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)setMj_originBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)mj_originBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
