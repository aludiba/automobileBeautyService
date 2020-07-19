#import "MJRefreshBackFooter+BmBm.h"
@implementation MJRefreshBackFooter (BmBm)
+ (BOOL)willMoveToSuperviewBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)scrollViewContentOffsetDidChangeBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)scrollViewContentSizeDidChangeBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setStateBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)heightForContentBreakViewBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)happenOffsetYBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
