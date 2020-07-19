#import "MJRefreshFooter+BmHb.h"
@implementation MJRefreshFooter (BmHb)
+ (BOOL)footerWithRefreshingBlockBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)footerWithRefreshingTargetRefreshingactionBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)prepareBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)willMoveToSuperviewBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)endRefreshingWithNoMoreDataBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)noticeNoMoreDataBmHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)resetNoMoreDataBmHb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)setAutomaticallyHiddenBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}

@end
