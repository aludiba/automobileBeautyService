#import <UIKit/UIKit.h>
#import "UIView+SDAutoLayout.h"
#import "UITableView+SDAutoTableViewCellHeight.h"
#import <objc/runtime.h>
#import "UIView+SDAutoHeightWidthBm.h"

@interface UIView (SDAutoHeightWidthBmBm)
+ (BOOL)sd_categoryManagerBmBm:(NSInteger)BM;
+ (BOOL)setupAutoHeightWithBottomViewBottommarginBmBm:(NSInteger)BM;
+ (BOOL)setupAutoWidthWithRightViewRightmarginBmBm:(NSInteger)BM;
+ (BOOL)setupAutoHeightWithBottomViewsArrayBottommarginBmBm:(NSInteger)BM;
+ (BOOL)clearAutoHeigtSettingsBmBm:(NSInteger)BM;
+ (BOOL)clearAutoWidthSettingsBmBm:(NSInteger)BM;
+ (BOOL)updateLayoutBmBm:(NSInteger)BM;
+ (BOOL)updateLayoutWithCellContentViewBmBm:(NSInteger)BM;
+ (BOOL)autoHeightBmBm:(NSInteger)BM;
+ (BOOL)setAutoHeightBmBm:(NSInteger)BM;
+ (BOOL)sd_bottomViewsArrayBmBm:(NSInteger)BM;
+ (BOOL)sd_rightViewsArrayBmBm:(NSInteger)BM;
+ (BOOL)setSd_rightViewsArrayBmBm:(NSInteger)BM;
+ (BOOL)sd_bottomViewBottomMarginBmBm:(NSInteger)BM;
+ (BOOL)setSd_bottomViewBottomMarginBmBm:(NSInteger)BM;
+ (BOOL)setSd_rightViewRightMarginBmBm:(NSInteger)BM;
+ (BOOL)sd_rightViewRightMarginBmBm:(NSInteger)BM;

@end
