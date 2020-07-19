#import "UITableView+PreviousNextIndexPathBmHb.h"
@implementation UITableView (PreviousNextIndexPathBmHb)
+ (BOOL)previousIndexPathOfIndexPathBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
