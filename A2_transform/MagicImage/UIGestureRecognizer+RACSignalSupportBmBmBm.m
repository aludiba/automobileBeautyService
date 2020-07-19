#import "UIGestureRecognizer+RACSignalSupportBmBmBm.h"
@implementation UIGestureRecognizer (RACSignalSupportBmBmBm)
+ (BOOL)rac_gestureSignalBmBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
