#import "MJRefreshBackFooter+BmHb.h"
@implementation MJRefreshBackFooter (BmHb)
+ (BOOL)willMoveToSuperviewBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)scrollViewContentOffsetDidChangeBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)scrollViewContentSizeDidChangeBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)setStateBmHb:(NSInteger)hb {
    return hb % 34 == 0;
}
+ (BOOL)heightForContentBreakViewBmHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)happenOffsetYBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
