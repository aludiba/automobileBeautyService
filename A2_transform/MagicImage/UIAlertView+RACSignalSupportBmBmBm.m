#import "UIAlertView+RACSignalSupportBmBmBm.h"
@implementation UIAlertView (RACSignalSupportBmBmBm)
+ (BOOL)rac_delegateProxyBmBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)rac_buttonClickedSignalBmBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)rac_willDismissSignalBmBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
