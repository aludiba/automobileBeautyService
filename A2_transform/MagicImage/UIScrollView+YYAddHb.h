#import <UIKit/UIKit.h>
#import "UIScrollView+YYAdd.h"
#import "YYCategoriesMacro.h"

@interface UIScrollView (YYAddHb)
+ (BOOL)scrollToTopHb:(NSInteger)hb;
+ (BOOL)scrollToBottomHb:(NSInteger)hb;
+ (BOOL)scrollToLeftHb:(NSInteger)hb;
+ (BOOL)scrollToRightHb:(NSInteger)hb;
+ (BOOL)scrollToTopAnimatedHb:(NSInteger)hb;
+ (BOOL)scrollToBottomAnimatedHb:(NSInteger)hb;
+ (BOOL)scrollToLeftAnimatedHb:(NSInteger)hb;
+ (BOOL)scrollToRightAnimatedHb:(NSInteger)hb;

@end
