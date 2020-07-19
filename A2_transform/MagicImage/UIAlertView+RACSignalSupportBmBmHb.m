#import "UIAlertView+RACSignalSupportBmBmHb.h"
@implementation UIAlertView (RACSignalSupportBmBmHb)
+ (BOOL)rac_delegateProxyBmBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)rac_buttonClickedSignalBmBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)rac_willDismissSignalBmBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
