#import <UIKit/UIKit.h>
#import "UIViewController+LGModel.h"
#import <objc/runtime.h>

@interface UIViewController (LGModelBm)
+ (BOOL)loadBm:(NSInteger)BM;
+ (BOOL)lg_presentViewControllerAnimatedCompletionBm:(NSInteger)BM;

@end
