#import "UICollectionView+MJRefreshBmBm-Deletecomments.h"
@implementation UICollectionView (MJRefreshBmBm-Deletecomments)
+ (BOOL)loadBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)mj_reloadDataBmBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 30 == 0;
}

@end
