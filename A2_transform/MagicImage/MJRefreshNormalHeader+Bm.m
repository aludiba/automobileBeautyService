#import "MJRefreshNormalHeader+Bm.h"
@implementation MJRefreshNormalHeader (Bm)
+ (BOOL)arrowViewBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)loadingViewBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)setActivityIndicatorViewStyleBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)prepareBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)placeSubviewsBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)setStateBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
