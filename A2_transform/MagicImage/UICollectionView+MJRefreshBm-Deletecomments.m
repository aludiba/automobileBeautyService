#import "UICollectionView+MJRefreshBm-Deletecomments.h"
@implementation UICollectionView (MJRefreshBm-Deletecomments)
+ (BOOL)loadBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 13 == 0;
}
+ (BOOL)mj_reloadDataBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 26 == 0;
}

@end
