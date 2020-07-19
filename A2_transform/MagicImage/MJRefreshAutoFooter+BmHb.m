#import "MJRefreshAutoFooter+BmHb.h"
@implementation MJRefreshAutoFooter (BmHb)
+ (BOOL)willMoveToSuperviewBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)setAppearencePercentTriggerAutoRefreshBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)appearencePercentTriggerAutoRefreshBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)prepareBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)scrollViewContentSizeDidChangeBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)scrollViewContentOffsetDidChangeBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)scrollViewPanStateDidChangeBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)beginRefreshingBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)setStateBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)setHiddenBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
