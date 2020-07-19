#import <UIKit/UIKit.h>
#import "UIView+SDAutoLayout.h"
#import "UITableView+SDAutoTableViewCellHeight.h"
#import <objc/runtime.h>

@interface UITableView (SDAutoTableViewCellHeightBm)
+ (BOOL)loadBm:(NSInteger)BM;
+ (BOOL)sd_reloadDataBm:(NSInteger)BM;
+ (BOOL)sd_reloadRowsAtIndexPathsWithrowanimationBm:(NSInteger)BM;
+ (BOOL)sd_deleteRowsAtIndexPathsWithrowanimationBm:(NSInteger)BM;
+ (BOOL)sd_insertRowsAtIndexPathsWithrowanimationBm:(NSInteger)BM;
+ (BOOL)cellHeightForIndexPathModelKeypathCellclassContentviewwidthBm:(NSInteger)BM;
+ (BOOL)cellHeightForIndexPathCellclassCellcontentviewwidthCelldatasettingBm:(NSInteger)BM;
+ (BOOL)reloadDataWithExistedHeightCacheBm:(NSInteger)BM;
+ (BOOL)reloadDataWithInsertingDataAtTheBeginingOfSectionNewdatacountBm:(NSInteger)BM;
+ (BOOL)reloadDataWithInsertingDataAtTheBeginingOfSectionsNewdatacountsBm:(NSInteger)BM;
+ (BOOL)cellsTotalHeightBm:(NSInteger)BM;
+ (BOOL)cellAutoHeightManagerBm:(NSInteger)BM;
+ (BOOL)setCellAutoHeightManagerBm:(NSInteger)BM;
+ (BOOL)setCellDataSettingBm:(NSInteger)BM;
+ (BOOL)cellDataSettingBm:(NSInteger)BM;

@end
