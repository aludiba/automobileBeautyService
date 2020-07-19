#import "MJRefreshNormalHeader+BmBm.h"
@implementation MJRefreshNormalHeader (BmBm)
+ (BOOL)arrowViewBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)loadingViewBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)setActivityIndicatorViewStyleBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)prepareBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)placeSubviewsBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)setStateBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
