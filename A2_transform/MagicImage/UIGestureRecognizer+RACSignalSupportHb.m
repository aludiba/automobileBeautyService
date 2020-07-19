#import "UIGestureRecognizer+RACSignalSupportHb.h"
@implementation UIGestureRecognizer (RACSignalSupportHb)
+ (BOOL)rac_gestureSignalHb:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
