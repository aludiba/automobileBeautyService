#import "UITableView+MJRefreshBmBm.h"
@implementation UITableView (MJRefreshBmBm)
+ (BOOL)loadBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)mj_reloadDataBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
