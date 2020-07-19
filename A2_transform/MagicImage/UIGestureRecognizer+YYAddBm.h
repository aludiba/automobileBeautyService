#import <UIKit/UIKit.h>
#import "UIGestureRecognizer+YYAdd.h"
#import "YYCategoriesMacro.h"
#import <objc/runtime.h>

@interface UIGestureRecognizer (YYAddBm)
+ (BOOL)initWithActionBlockBm:(NSInteger)BM;
+ (BOOL)addActionBlockBm:(NSInteger)BM;
+ (BOOL)removeAllActionBlocksBm:(NSInteger)BM;
+ (BOOL)_yy_allUIGestureRecognizerBlockTargetsBm:(NSInteger)BM;

@end
