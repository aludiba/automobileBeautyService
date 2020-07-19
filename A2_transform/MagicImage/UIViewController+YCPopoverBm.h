#import <UIKit/UIKit.h>
#import "YCPopoverMacro.h"
#import "YCPopoverAnimator.h"
#import "UIViewController+YCPopover.h"
#import <objc/runtime.h>

@interface UIViewController (YCPopoverBm)
+ (BOOL)popoverAnimatorBm:(NSInteger)BM;
+ (BOOL)setPopoverAnimatorBm:(NSInteger)BM;
+ (BOOL)yc_bottomPresentControllerPresentedheightCompletehandleBm:(NSInteger)BM;
+ (BOOL)yc_centerPresentControllerPresentedsizeCompletehandleBm:(NSInteger)BM;

@end
