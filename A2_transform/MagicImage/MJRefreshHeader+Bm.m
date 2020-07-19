#import "MJRefreshHeader+Bm.h"
@implementation MJRefreshHeader (Bm)
+ (BOOL)headerWithRefreshingBlockBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)headerWithRefreshingTargetRefreshingactionBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)prepareBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)placeSubviewsBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)scrollViewContentOffsetDidChangeBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)setStateBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)lastUpdatedTimeBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
