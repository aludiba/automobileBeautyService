#import "UICollectionView+MJRefreshBm.h"
@implementation UICollectionView (MJRefreshBm)
+ (BOOL)loadBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)mj_reloadDataBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
