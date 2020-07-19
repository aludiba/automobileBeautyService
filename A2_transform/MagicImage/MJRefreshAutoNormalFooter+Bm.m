#import "MJRefreshAutoNormalFooter+Bm.h"
@implementation MJRefreshAutoNormalFooter (Bm)
+ (BOOL)loadingViewBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setActivityIndicatorViewStyleBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)prepareBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)placeSubviewsBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)setStateBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
