#import "MJRefreshAutoStateFooter+Bm.h"
@implementation MJRefreshAutoStateFooter (Bm)
+ (BOOL)stateTitlesBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)stateLabelBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)setTitleForstateBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)stateLabelClickBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)prepareBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)placeSubviewsBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)setStateBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
