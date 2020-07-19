#import <UIKit/UIKit.h>
#import "UIControl+YYAdd.h"
#import "YYCategoriesMacro.h"
#import <objc/runtime.h>

@interface UIControl (YYAddHb)
+ (BOOL)removeAllTargetsHb:(NSInteger)hb;
+ (BOOL)setTargetActionForcontroleventsHb:(NSInteger)hb;
+ (BOOL)addBlockForControlEventsBlockHb:(NSInteger)hb;
+ (BOOL)setBlockForControlEventsBlockHb:(NSInteger)hb;
+ (BOOL)removeAllBlocksForControlEventsHb:(NSInteger)hb;
+ (BOOL)_yy_allUIControlBlockTargetsHb:(NSInteger)hb;

@end
