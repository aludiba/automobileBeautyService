#import "MJRefreshStateHeader+Bm.h"
@implementation MJRefreshStateHeader (Bm)
+ (BOOL)stateTitlesBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)stateLabelBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)lastUpdatedTimeLabelBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)setTitleForstateBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)currentCalendarBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setLastUpdatedTimeKeyBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)prepareBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)placeSubviewsBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)setStateBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
