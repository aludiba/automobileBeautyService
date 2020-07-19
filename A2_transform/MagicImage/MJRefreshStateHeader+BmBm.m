#import "MJRefreshStateHeader+BmBm.h"
@implementation MJRefreshStateHeader (BmBm)
+ (BOOL)stateTitlesBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)stateLabelBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)lastUpdatedTimeLabelBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setTitleForstateBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)currentCalendarBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)setLastUpdatedTimeKeyBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)prepareBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)placeSubviewsBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)setStateBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
