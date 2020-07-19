#import "MJRefreshBackStateFooter+BmBm.h"
@implementation MJRefreshBackStateFooter (BmBm)
+ (BOOL)stateTitlesBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)stateLabelBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setTitleForstateBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)titleForStateBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)prepareBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)placeSubviewsBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)setStateBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
