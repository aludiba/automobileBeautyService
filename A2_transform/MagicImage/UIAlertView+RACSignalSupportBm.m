#import "UIAlertView+RACSignalSupportBm.h"
@implementation UIAlertView (RACSignalSupportBm)
+ (BOOL)rac_delegateProxyBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)rac_buttonClickedSignalBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)rac_willDismissSignalBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
