#import "MJRefreshAutoNormalFooter+BmBm.h"
@implementation MJRefreshAutoNormalFooter (BmBm)
+ (BOOL)loadingViewBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)setActivityIndicatorViewStyleBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)prepareBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)placeSubviewsBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)setStateBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
