#import "UIScrollView+MJExtensionBm.h"
@implementation UIScrollView (MJExtensionBm)
+ (BOOL)loadBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)mj_insetBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)setMj_insetTBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)mj_insetTBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)setMj_insetBBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)mj_insetBBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)setMj_insetLBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)mj_insetLBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setMj_insetRBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)mj_insetRBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setMj_offsetXBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)mj_offsetXBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setMj_offsetYBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)mj_offsetYBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setMj_contentWBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)mj_contentWBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)setMj_contentHBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)mj_contentHBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
