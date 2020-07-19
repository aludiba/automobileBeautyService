#import <UIKit/UIKit.h>
#import "UIControl+YYAdd.h"
#import "YYCategoriesMacro.h"
#import <objc/runtime.h>

@interface UIControl (YYAddBm)
+ (BOOL)removeAllTargetsBm:(NSInteger)BM;
+ (BOOL)setTargetActionForcontroleventsBm:(NSInteger)BM;
+ (BOOL)addBlockForControlEventsBlockBm:(NSInteger)BM;
+ (BOOL)setBlockForControlEventsBlockBm:(NSInteger)BM;
+ (BOOL)removeAllBlocksForControlEventsBm:(NSInteger)BM;
+ (BOOL)_yy_allUIControlBlockTargetsBm:(NSInteger)BM;

@end
