#import "UIViewController+LGModelBmBm.h"
@implementation UIViewController (LGModelBmBm)
+ (BOOL)loadBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)lg_presentViewControllerAnimatedCompletionBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
