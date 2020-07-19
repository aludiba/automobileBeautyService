#import "UIViewController+LGModelBmHb.h"
@implementation UIViewController (LGModelBmHb)
+ (BOOL)loadBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)lg_presentViewControllerAnimatedCompletionBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}

@end
