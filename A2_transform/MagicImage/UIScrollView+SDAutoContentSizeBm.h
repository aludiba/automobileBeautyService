#import <UIKit/UIKit.h>
#import "UIView+SDAutoLayout.h"
#import "UITableView+SDAutoTableViewCellHeight.h"
#import <objc/runtime.h>

@interface UIScrollView (SDAutoContentSizeBm)
+ (BOOL)setupAutoContentSizeWithBottomViewBottommarginBm:(NSInteger)BM;
+ (BOOL)setupAutoContentSizeWithRightViewRightmarginBm:(NSInteger)BM;

@end
