#import "UIAlertView+RACSignalSupportHb.h"
@implementation UIAlertView (RACSignalSupportHb)
+ (BOOL)rac_delegateProxyHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)rac_buttonClickedSignalHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)rac_willDismissSignalHb:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
