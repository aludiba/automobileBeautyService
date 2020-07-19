#import "MJRefreshBackNormalFooter+Bm.h"
@implementation MJRefreshBackNormalFooter (Bm)
+ (BOOL)arrowViewBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)loadingViewBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setActivityIndicatorViewStyleBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)prepareBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)placeSubviewsBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)setStateBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
