#import "UIScrollView+MJRefreshBmBm.h"
@implementation UIScrollView (MJRefreshBmBm)
+ (BOOL)setMj_headerBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)mj_headerBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setMj_footerBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)mj_footerBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)setFooterBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)footerBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)setHeaderBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)headerBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)mj_totalDataCountBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setMj_reloadDataBlockBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)mj_reloadDataBlockBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)executeReloadDataBlockBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
