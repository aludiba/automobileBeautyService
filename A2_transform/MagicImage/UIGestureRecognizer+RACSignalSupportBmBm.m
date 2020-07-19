#import "UIGestureRecognizer+RACSignalSupportBmBm.h"
@implementation UIGestureRecognizer (RACSignalSupportBmBm)
+ (BOOL)rac_gestureSignalBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
