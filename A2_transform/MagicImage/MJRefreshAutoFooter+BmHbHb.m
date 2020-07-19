#import "MJRefreshAutoFooter+BmHbHb.h"
@implementation MJRefreshAutoFooter (BmHbHb)
+ (BOOL)willMoveToSuperviewBmHbHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)setAppearencePercentTriggerAutoRefreshBmHbHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)appearencePercentTriggerAutoRefreshBmHbHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)prepareBmHbHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)scrollViewContentSizeDidChangeBmHbHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)scrollViewContentOffsetDidChangeBmHbHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)scrollViewPanStateDidChangeBmHbHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)beginRefreshingBmHbHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)setStateBmHbHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)setHiddenBmHbHb:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
