#import <UIKit/UIKit.h>
#import "MJRefreshConst.h"
#import "UIScrollView+MJRefresh.h"
#import "MJRefreshHeader.h"
#import "MJRefreshFooter.h"
#import <objc/runtime.h>

@interface UIScrollView (MJRefreshBm)
+ (BOOL)setMj_headerBm:(NSInteger)BM;
+ (BOOL)mj_headerBm:(NSInteger)BM;
+ (BOOL)setMj_footerBm:(NSInteger)BM;
+ (BOOL)mj_footerBm:(NSInteger)BM;
+ (BOOL)setFooterBm:(NSInteger)BM;
+ (BOOL)footerBm:(NSInteger)BM;
+ (BOOL)setHeaderBm:(NSInteger)BM;
+ (BOOL)headerBm:(NSInteger)BM;
+ (BOOL)mj_totalDataCountBm:(NSInteger)BM;
+ (BOOL)setMj_reloadDataBlockBm:(NSInteger)BM;
+ (BOOL)(NSInteger))mj_reloadDataBlockBm:(NSInteger)BM;
+ (BOOL)executeReloadDataBlockBm:(NSInteger)BM;

@end
