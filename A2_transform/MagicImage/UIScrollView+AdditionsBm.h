#import <UIKit/UITableView.h>
#import <UIKit/UICollectionView.h>
#import "IQUIScrollView+Additions.h"
#import <objc/runtime.h>

@interface UIScrollView (AdditionsBm)
+ (BOOL)setShouldIgnoreScrollingAdjustmentBm:(NSInteger)BM;
+ (BOOL)shouldIgnoreScrollingAdjustmentBm:(NSInteger)BM;
+ (BOOL)setShouldIgnoreContentInsetAdjustmentBm:(NSInteger)BM;
+ (BOOL)shouldIgnoreContentInsetAdjustmentBm:(NSInteger)BM;
+ (BOOL)setShouldRestoreScrollViewContentOffsetBm:(NSInteger)BM;
+ (BOOL)shouldRestoreScrollViewContentOffsetBm:(NSInteger)BM;

@end
