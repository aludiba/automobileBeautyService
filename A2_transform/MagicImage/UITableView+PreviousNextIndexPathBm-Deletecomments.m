#import "UITableView+PreviousNextIndexPathBm-Deletecomments.h"
@implementation UITableView (PreviousNextIndexPathBm-Deletecomments)
+ (BOOL)previousIndexPathOfIndexPathBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 5 == 0;
}

@end
