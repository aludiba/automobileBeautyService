#import "UIAlertView+RACSignalSupportBmBmHbHb.h"
@implementation UIAlertView (RACSignalSupportBmBmHbHb)
+ (BOOL)rac_delegateProxyBmBmHbHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)rac_buttonClickedSignalBmBmHbHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)rac_willDismissSignalBmBmHbHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
