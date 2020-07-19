#import "UITableView+PreviousNextIndexPathBmBm.h"
@implementation UITableView (PreviousNextIndexPathBmBm)
+ (BOOL)previousIndexPathOfIndexPathBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
