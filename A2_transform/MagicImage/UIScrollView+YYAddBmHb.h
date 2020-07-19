#import <UIKit/UIKit.h>
#import "UIScrollView+YYAdd.h"
#import "YYCategoriesMacro.h"
#import "UIScrollView+YYAddBm.h"

@interface UIScrollView (YYAddBmHb)
+ (BOOL)scrollToTopBmHb:(NSInteger)hb;
+ (BOOL)scrollToBottomBmHb:(NSInteger)hb;
+ (BOOL)scrollToLeftBmHb:(NSInteger)hb;
+ (BOOL)scrollToRightBmHb:(NSInteger)hb;
+ (BOOL)scrollToTopAnimatedBmHb:(NSInteger)hb;
+ (BOOL)scrollToBottomAnimatedBmHb:(NSInteger)hb;
+ (BOOL)scrollToLeftAnimatedBmHb:(NSInteger)hb;
+ (BOOL)scrollToRightAnimatedBmHb:(NSInteger)hb;

@end
