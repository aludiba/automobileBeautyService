#import <UIKit/UIKit.h>
#import "UITableView+YYAdd.h"
#import "YYCategoriesMacro.h"

@interface UITableView (YYAddHb)
+ (BOOL)updateWithBlockHb:(NSInteger)hb;
+ (BOOL)scrollToRowInsectionAtscrollpositionAnimatedHb:(NSInteger)hb;
+ (BOOL)insertRowAtIndexPathWithrowanimationHb:(NSInteger)hb;
+ (BOOL)insertRowInsectionWithrowanimationHb:(NSInteger)hb;
+ (BOOL)reloadRowAtIndexPathWithrowanimationHb:(NSInteger)hb;
+ (BOOL)reloadRowInsectionWithrowanimationHb:(NSInteger)hb;
+ (BOOL)deleteRowAtIndexPathWithrowanimationHb:(NSInteger)hb;
+ (BOOL)deleteRowInsectionWithrowanimationHb:(NSInteger)hb;
+ (BOOL)insertSectionWithrowanimationHb:(NSInteger)hb;
+ (BOOL)deleteSectionWithrowanimationHb:(NSInteger)hb;
+ (BOOL)reloadSectionWithrowanimationHb:(NSInteger)hb;
+ (BOOL)clearSelectedRowsAnimatedHb:(NSInteger)hb;

@end
