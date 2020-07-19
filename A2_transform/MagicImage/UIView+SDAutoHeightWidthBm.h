#import <UIKit/UIKit.h>
#import "UIView+SDAutoLayout.h"
#import "UITableView+SDAutoTableViewCellHeight.h"
#import <objc/runtime.h>

@interface UIView (SDAutoHeightWidthBm)
+ (BOOL)sd_categoryManagerBm:(NSInteger)BM;
+ (BOOL)setupAutoHeightWithBottomViewBottommarginBm:(NSInteger)BM;
+ (BOOL)setupAutoWidthWithRightViewRightmarginBm:(NSInteger)BM;
+ (BOOL)setupAutoHeightWithBottomViewsArrayBottommarginBm:(NSInteger)BM;
+ (BOOL)clearAutoHeigtSettingsBm:(NSInteger)BM;
+ (BOOL)clearAutoWidthSettingsBm:(NSInteger)BM;
+ (BOOL)updateLayoutBm:(NSInteger)BM;
+ (BOOL)updateLayoutWithCellContentViewBm:(NSInteger)BM;
+ (BOOL)autoHeightBm:(NSInteger)BM;
+ (BOOL)setAutoHeightBm:(NSInteger)BM;
+ (BOOL)sd_bottomViewsArrayBm:(NSInteger)BM;
+ (BOOL)sd_rightViewsArrayBm:(NSInteger)BM;
+ (BOOL)setSd_rightViewsArrayBm:(NSInteger)BM;
+ (BOOL)sd_bottomViewBottomMarginBm:(NSInteger)BM;
+ (BOOL)setSd_bottomViewBottomMarginBm:(NSInteger)BM;
+ (BOOL)setSd_rightViewRightMarginBm:(NSInteger)BM;
+ (BOOL)sd_rightViewRightMarginBm:(NSInteger)BM;

@end
