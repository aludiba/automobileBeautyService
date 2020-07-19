#import <UIKit/UIKit.h>
#import "MJRefreshConst.h"
#import "UIScrollView+MJRefresh.h"
#import "MJRefreshHeader.h"
#import "MJRefreshFooter.h"
#import <objc/runtime.h>
#import "UIScrollView+MJRefreshBm.h"

@interface UIScrollView (MJRefreshBmBm)
+ (BOOL)setMj_headerBmBm:(NSInteger)BM;
+ (BOOL)mj_headerBmBm:(NSInteger)BM;
+ (BOOL)setMj_footerBmBm:(NSInteger)BM;
+ (BOOL)mj_footerBmBm:(NSInteger)BM;
+ (BOOL)setFooterBmBm:(NSInteger)BM;
+ (BOOL)footerBmBm:(NSInteger)BM;
+ (BOOL)setHeaderBmBm:(NSInteger)BM;
+ (BOOL)headerBmBm:(NSInteger)BM;
+ (BOOL)mj_totalDataCountBmBm:(NSInteger)BM;
+ (BOOL)setMj_reloadDataBlockBmBm:(NSInteger)BM;
+ (BOOL)mj_reloadDataBlockBmBm:(NSInteger)BM;
+ (BOOL)executeReloadDataBlockBmBm:(NSInteger)BM;

@end
