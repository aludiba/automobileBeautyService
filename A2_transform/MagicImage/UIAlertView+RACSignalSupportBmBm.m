#import "UIAlertView+RACSignalSupportBmBm.h"
@implementation UIAlertView (RACSignalSupportBmBm)
+ (BOOL)rac_delegateProxyBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)rac_buttonClickedSignalBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)rac_willDismissSignalBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
