#import "MJRefreshAutoFooter+BmBm.h"
@implementation MJRefreshAutoFooter (BmBm)
+ (BOOL)willMoveToSuperviewBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)setAppearencePercentTriggerAutoRefreshBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)appearencePercentTriggerAutoRefreshBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)prepareBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)scrollViewContentSizeDidChangeBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)scrollViewContentOffsetDidChangeBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)scrollViewPanStateDidChangeBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)beginRefreshingBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)setStateBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setHiddenBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
