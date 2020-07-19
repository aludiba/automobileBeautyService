#import "MJRefreshNormalHeader+BmHb.h"
@implementation MJRefreshNormalHeader (BmHb)
+ (BOOL)arrowViewBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)loadingViewBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)setActivityIndicatorViewStyleBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)prepareBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)placeSubviewsBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)setStateBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
