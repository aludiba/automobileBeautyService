#import "MJRefreshHeader+BmBm.h"
@implementation MJRefreshHeader (BmBm)
+ (BOOL)headerWithRefreshingBlockBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)headerWithRefreshingTargetRefreshingactionBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)prepareBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)placeSubviewsBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)scrollViewContentOffsetDidChangeBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setStateBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)lastUpdatedTimeBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
