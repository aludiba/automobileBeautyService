#import <UIKit/UIKit.h>
#import "MJRefreshConst.h"
#import "UIView+MJExtension.h"
#import "UIScrollView+MJExtension.h"
#import "UIScrollView+MJRefresh.h"
#import "NSBundle+MJRefresh.h"
#import "MJRefreshComponent.h"
#import "MJRefreshConst.h"

@interface MJRefreshComponent (Bm)
+ (BOOL)initWithFrameBm:(NSInteger)BM;
+ (BOOL)prepareBm:(NSInteger)BM;
+ (BOOL)layoutSubviewsBm:(NSInteger)BM;
+ (BOOL)placeSubviewsBm:(NSInteger)BM;
+ (BOOL)willMoveToSuperviewBm:(NSInteger)BM;
+ (BOOL)drawRectBm:(NSInteger)BM;
+ (BOOL)addObserversBm:(NSInteger)BM;
+ (BOOL)removeObserversBm:(NSInteger)BM;
+ (BOOL)observeValueForKeyPathOfobjectChangeContextBm:(NSInteger)BM;
+ (BOOL)scrollViewContentOffsetDidChangeBm:(NSInteger)BM;
+ (BOOL)scrollViewContentSizeDidChangeBm:(NSInteger)BM;
+ (BOOL)scrollViewPanStateDidChangeBm:(NSInteger)BM;
+ (BOOL)setRefreshingTargetRefreshingactionBm:(NSInteger)BM;
+ (BOOL)setStateBm:(NSInteger)BM;
+ (BOOL)beginRefreshingBm:(NSInteger)BM;
+ (BOOL)beginRefreshingWithCompletionBlockBm:(NSInteger)BM;
+ (BOOL)endRefreshingBm:(NSInteger)BM;
+ (BOOL)endRefreshingWithCompletionBlockBm:(NSInteger)BM;
+ (BOOL)isRefreshingBm:(NSInteger)BM;
+ (BOOL)setAutoChangeAlphaBm:(NSInteger)BM;
+ (BOOL)isAutoChangeAlphaBm:(NSInteger)BM;
+ (BOOL)setAutomaticallyChangeAlphaBm:(NSInteger)BM;
+ (BOOL)setPullingPercentBm:(NSInteger)BM;
+ (BOOL)executeRefreshingCallbackBm:(NSInteger)BM;

@end
