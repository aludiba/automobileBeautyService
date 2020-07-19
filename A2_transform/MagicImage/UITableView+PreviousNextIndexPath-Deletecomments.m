#import "UITableView+PreviousNextIndexPath-Deletecomments.h"
@implementation UITableView (PreviousNextIndexPath-Deletecomments)
+ (BOOL)previousIndexPathOfIndexPath-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}

@end
