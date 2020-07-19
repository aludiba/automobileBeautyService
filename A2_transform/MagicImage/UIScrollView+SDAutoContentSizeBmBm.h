#import <UIKit/UIKit.h>
#import "UIView+SDAutoLayout.h"
#import "UITableView+SDAutoTableViewCellHeight.h"
#import <objc/runtime.h>
#import "UIScrollView+SDAutoContentSizeBm.h"

@interface UIScrollView (SDAutoContentSizeBmBm)
+ (BOOL)setupAutoContentSizeWithBottomViewBottommarginBmBm:(NSInteger)BM;
+ (BOOL)setupAutoContentSizeWithRightViewRightmarginBmBm:(NSInteger)BM;

@end
