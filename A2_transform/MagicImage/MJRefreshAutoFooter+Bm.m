#import "MJRefreshAutoFooter+Bm.h"
@implementation MJRefreshAutoFooter (Bm)
+ (BOOL)willMoveToSuperviewBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)setAppearencePercentTriggerAutoRefreshBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)appearencePercentTriggerAutoRefreshBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)prepareBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)scrollViewContentSizeDidChangeBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)scrollViewContentOffsetDidChangeBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)scrollViewPanStateDidChangeBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)beginRefreshingBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setStateBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)setHiddenBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
