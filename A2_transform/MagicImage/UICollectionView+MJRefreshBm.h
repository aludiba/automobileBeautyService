#import <UIKit/UIKit.h>
#import "MJRefreshConst.h"
#import "UIScrollView+MJRefresh.h"
#import "MJRefreshHeader.h"
#import "MJRefreshFooter.h"
#import <objc/runtime.h>

@interface UICollectionView (MJRefreshBm)
+ (BOOL)loadBm:(NSInteger)BM;
+ (BOOL)mj_reloadDataBm:(NSInteger)BM;

@end
