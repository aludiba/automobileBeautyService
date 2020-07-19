#import "UIViewController+LGModelBm.h"
@implementation UIViewController (LGModelBm)
+ (BOOL)loadBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)lg_presentViewControllerAnimatedCompletionBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
