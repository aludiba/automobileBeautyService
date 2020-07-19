#import "UICollectionView+ConvenienceBmBm.h"
@implementation UICollectionView (ConvenienceBmBm)
+ (BOOL)rt_indexPathsForElementsInRectBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
