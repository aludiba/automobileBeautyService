#import "UICollectionView+PreviousNextIndexPathBm.h"
@implementation UICollectionView (PreviousNextIndexPathBm)
+ (BOOL)previousIndexPathOfIndexPathBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
