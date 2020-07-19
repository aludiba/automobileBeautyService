#import "UITableViewController+SDTableViewControllerAutoCellHeightBm.h"
@implementation UITableViewController (SDTableViewControllerAutoCellHeightBm)
+ (BOOL)cellHeightForIndexPathCellcontentviewwidthBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
