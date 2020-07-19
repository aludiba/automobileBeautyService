#import "MJRefreshFooter+BmBm.h"
@implementation MJRefreshFooter (BmBm)
+ (BOOL)footerWithRefreshingBlockBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)footerWithRefreshingTargetRefreshingactionBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)prepareBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)willMoveToSuperviewBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)endRefreshingWithNoMoreDataBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)noticeNoMoreDataBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)resetNoMoreDataBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setAutomaticallyHiddenBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
