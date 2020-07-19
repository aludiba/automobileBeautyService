#import "UICollectionView+MJRefreshBmBm.h"
@implementation UICollectionView (MJRefreshBmBm)
+ (BOOL)loadBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)mj_reloadDataBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
