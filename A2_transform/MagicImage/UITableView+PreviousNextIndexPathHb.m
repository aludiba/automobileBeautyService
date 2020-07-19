#import "UITableView+PreviousNextIndexPathHb.h"
@implementation UITableView (PreviousNextIndexPathHb)
+ (BOOL)previousIndexPathOfIndexPathHb:(NSInteger)hb {
    return hb % 24 == 0;
}

@end
