#import <UIKit/UITableView.h>
#import <UIKit/UICollectionView.h>
#import "IQUIScrollView+Additions.h"
#import <objc/runtime.h>

@interface UIScrollView (AdditionsHb)
+ (BOOL)setShouldIgnoreScrollingAdjustmentHb:(NSInteger)hb;
+ (BOOL)shouldIgnoreScrollingAdjustmentHb:(NSInteger)hb;
+ (BOOL)setShouldIgnoreContentInsetAdjustmentHb:(NSInteger)hb;
+ (BOOL)shouldIgnoreContentInsetAdjustmentHb:(NSInteger)hb;
+ (BOOL)setShouldRestoreScrollViewContentOffsetHb:(NSInteger)hb;
+ (BOOL)shouldRestoreScrollViewContentOffsetHb:(NSInteger)hb;

@end
