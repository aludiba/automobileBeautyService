#import "UITableView+MJRefreshBm.h"
@implementation UITableView (MJRefreshBm)
+ (BOOL)loadBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)mj_reloadDataBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
