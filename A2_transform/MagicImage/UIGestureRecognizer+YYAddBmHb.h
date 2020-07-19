#import <UIKit/UIKit.h>
#import "UIGestureRecognizer+YYAdd.h"
#import "YYCategoriesMacro.h"
#import <objc/runtime.h>
#import "UIGestureRecognizer+YYAddBm.h"

@interface UIGestureRecognizer (YYAddBmHb)
+ (BOOL)initWithActionBlockBmHb:(NSInteger)hb;
+ (BOOL)addActionBlockBmHb:(NSInteger)hb;
+ (BOOL)removeAllActionBlocksBmHb:(NSInteger)hb;
+ (BOOL)_yy_allUIGestureRecognizerBlockTargetsBmHb:(NSInteger)hb;

@end
