#import "MJRefreshHeader+BmHb.h"
@implementation MJRefreshHeader (BmHb)
+ (BOOL)headerWithRefreshingBlockBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)headerWithRefreshingTargetRefreshingactionBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)prepareBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)placeSubviewsBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)scrollViewContentOffsetDidChangeBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)setStateBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)lastUpdatedTimeBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
