#import <UIKit/UIKit.h>
#import "UIScrollView+YYAdd.h"
#import "YYCategoriesMacro.h"

@interface UIScrollView (YYAddBm)
+ (BOOL)scrollToTopBm:(NSInteger)BM;
+ (BOOL)scrollToBottomBm:(NSInteger)BM;
+ (BOOL)scrollToLeftBm:(NSInteger)BM;
+ (BOOL)scrollToRightBm:(NSInteger)BM;
+ (BOOL)scrollToTopAnimatedBm:(NSInteger)BM;
+ (BOOL)scrollToBottomAnimatedBm:(NSInteger)BM;
+ (BOOL)scrollToLeftAnimatedBm:(NSInteger)BM;
+ (BOOL)scrollToRightAnimatedBm:(NSInteger)BM;

@end
