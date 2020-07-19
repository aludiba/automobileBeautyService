#import "MJRefreshBackNormalFooter+BmBm.h"
@implementation MJRefreshBackNormalFooter (BmBm)
+ (BOOL)arrowViewBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)loadingViewBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)setActivityIndicatorViewStyleBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)prepareBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)placeSubviewsBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setStateBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
