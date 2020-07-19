#import <UIKit/UIKit.h>
#import "UIGestureRecognizer+YYAdd.h"
#import "YYCategoriesMacro.h"
#import <objc/runtime.h>

@interface UIGestureRecognizer (YYAddHb)
+ (BOOL)initWithActionBlockHb:(NSInteger)hb;
+ (BOOL)addActionBlockHb:(NSInteger)hb;
+ (BOOL)removeAllActionBlocksHb:(NSInteger)hb;
+ (BOOL)_yy_allUIGestureRecognizerBlockTargetsHb:(NSInteger)hb;

@end
