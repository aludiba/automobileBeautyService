#import "UICollectionView+PreviousNextIndexPathBmBm.h"
@implementation UICollectionView (PreviousNextIndexPathBmBm)
+ (BOOL)previousIndexPathOfIndexPathBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
