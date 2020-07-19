#import "UICollectionView+MJRefreshBmHb.h"
@implementation UICollectionView (MJRefreshBmHb)
+ (BOOL)loadBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)mj_reloadDataBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
