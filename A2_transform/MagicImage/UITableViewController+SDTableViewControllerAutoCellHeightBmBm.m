#import "UITableViewController+SDTableViewControllerAutoCellHeightBmBm.h"
@implementation UITableViewController (SDTableViewControllerAutoCellHeightBmBm)
+ (BOOL)cellHeightForIndexPathCellcontentviewwidthBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
