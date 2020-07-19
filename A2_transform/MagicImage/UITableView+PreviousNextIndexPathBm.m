#import "UITableView+PreviousNextIndexPathBm.h"
@implementation UITableView (PreviousNextIndexPathBm)
+ (BOOL)previousIndexPathOfIndexPathBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
