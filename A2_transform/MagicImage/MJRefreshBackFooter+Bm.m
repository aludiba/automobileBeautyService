#import "MJRefreshBackFooter+Bm.h"
@implementation MJRefreshBackFooter (Bm)
+ (BOOL)willMoveToSuperviewBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)scrollViewContentOffsetDidChangeBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)scrollViewContentSizeDidChangeBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)setStateBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)heightForContentBreakViewBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)happenOffsetYBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
