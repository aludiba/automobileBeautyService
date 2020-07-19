#import "UIGestureRecognizer+RACSignalSupportBmHb.h"
@implementation UIGestureRecognizer (RACSignalSupportBmHb)
+ (BOOL)rac_gestureSignalBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
