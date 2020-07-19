#import "UICollectionView+MJRefreshBmBmHb.h"
@implementation UICollectionView (MJRefreshBmBmHb)
+ (BOOL)loadBmBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)mj_reloadDataBmBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
