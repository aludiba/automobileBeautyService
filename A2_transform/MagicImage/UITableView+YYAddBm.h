#import <UIKit/UIKit.h>
#import "UITableView+YYAdd.h"
#import "YYCategoriesMacro.h"

@interface UITableView (YYAddBm)
+ (BOOL)updateWithBlockBm:(NSInteger)BM;
+ (BOOL)scrollToRowInsectionAtscrollpositionAnimatedBm:(NSInteger)BM;
+ (BOOL)insertRowAtIndexPathWithrowanimationBm:(NSInteger)BM;
+ (BOOL)insertRowInsectionWithrowanimationBm:(NSInteger)BM;
+ (BOOL)reloadRowAtIndexPathWithrowanimationBm:(NSInteger)BM;
+ (BOOL)reloadRowInsectionWithrowanimationBm:(NSInteger)BM;
+ (BOOL)deleteRowAtIndexPathWithrowanimationBm:(NSInteger)BM;
+ (BOOL)deleteRowInsectionWithrowanimationBm:(NSInteger)BM;
+ (BOOL)insertSectionWithrowanimationBm:(NSInteger)BM;
+ (BOOL)deleteSectionWithrowanimationBm:(NSInteger)BM;
+ (BOOL)reloadSectionWithrowanimationBm:(NSInteger)BM;
+ (BOOL)clearSelectedRowsAnimatedBm:(NSInteger)BM;

@end
