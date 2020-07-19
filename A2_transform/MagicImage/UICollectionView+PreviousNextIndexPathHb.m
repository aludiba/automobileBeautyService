#import "UICollectionView+PreviousNextIndexPathHb.h"
@implementation UICollectionView (PreviousNextIndexPathHb)
+ (BOOL)previousIndexPathOfIndexPathHb:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
