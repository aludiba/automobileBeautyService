#import "UICollectionView+PreviousNextIndexPath-Deletecomments.h"
@implementation UICollectionView (PreviousNextIndexPath-Deletecomments)
+ (BOOL)previousIndexPathOfIndexPath-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 17 == 0;
}

@end
