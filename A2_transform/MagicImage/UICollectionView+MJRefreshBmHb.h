#import <UIKit/UIKit.h>
#import "MJRefreshConst.h"
#import "UIScrollView+MJRefresh.h"
#import "MJRefreshHeader.h"
#import "MJRefreshFooter.h"
#import <objc/runtime.h>
#import "UICollectionView+MJRefreshBm.h"

@interface UICollectionView (MJRefreshBmHb)
+ (BOOL)loadBmHb:(NSInteger)hb;
+ (BOOL)mj_reloadDataBmHb:(NSInteger)hb;

@end
