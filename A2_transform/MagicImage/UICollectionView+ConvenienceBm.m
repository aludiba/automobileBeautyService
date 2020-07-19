#import "UICollectionView+ConvenienceBm.h"
@implementation UICollectionView (ConvenienceBm)
+ (BOOL)rt_indexPathsForElementsInRectBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
