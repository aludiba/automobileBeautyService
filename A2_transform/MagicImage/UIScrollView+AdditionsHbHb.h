#import <UIKit/UITableView.h>
#import <UIKit/UICollectionView.h>
#import "IQUIScrollView+Additions.h"
#import <objc/runtime.h>
#import "UIScrollView+AdditionsHb.h"

@interface UIScrollView (AdditionsHbHb)
+ (BOOL)setShouldIgnoreScrollingAdjustmentHbHb:(NSInteger)hb;
+ (BOOL)shouldIgnoreScrollingAdjustmentHbHb:(NSInteger)hb;
+ (BOOL)setShouldIgnoreContentInsetAdjustmentHbHb:(NSInteger)hb;
+ (BOOL)shouldIgnoreContentInsetAdjustmentHbHb:(NSInteger)hb;
+ (BOOL)setShouldRestoreScrollViewContentOffsetHbHb:(NSInteger)hb;
+ (BOOL)shouldRestoreScrollViewContentOffsetHbHb:(NSInteger)hb;

@end
