#import "UIGestureRecognizer+RACSignalSupportBm.h"
@implementation UIGestureRecognizer (RACSignalSupportBm)
+ (BOOL)rac_gestureSignalBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
