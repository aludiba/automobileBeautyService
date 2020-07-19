#import "MJRefreshBackStateFooter+Bm.h"
@implementation MJRefreshBackStateFooter (Bm)
+ (BOOL)stateTitlesBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)stateLabelBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)setTitleForstateBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)titleForStateBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)prepareBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)placeSubviewsBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setStateBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
