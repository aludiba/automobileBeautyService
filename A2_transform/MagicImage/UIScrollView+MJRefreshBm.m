#import "UIScrollView+MJRefreshBm.h"
@implementation UIScrollView (MJRefreshBm)
+ (BOOL)setMj_headerBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)mj_headerBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setMj_footerBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)mj_footerBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)setFooterBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)footerBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setHeaderBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)headerBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)mj_totalDataCountBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)setMj_reloadDataBlockBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)(NSInteger))mj_reloadDataBlockBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)executeReloadDataBlockBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
