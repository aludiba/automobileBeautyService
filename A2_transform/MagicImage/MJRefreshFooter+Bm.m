#import "MJRefreshFooter+Bm.h"
@implementation MJRefreshFooter (Bm)
+ (BOOL)footerWithRefreshingBlockBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)footerWithRefreshingTargetRefreshingactionBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)prepareBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)willMoveToSuperviewBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)endRefreshingWithNoMoreDataBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)noticeNoMoreDataBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)resetNoMoreDataBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)setAutomaticallyHiddenBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
