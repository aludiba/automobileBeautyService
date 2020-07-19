#import "BMUIAlertViewr+BmBm.h"
@implementation BMUIAlertViewr (BmBm)
+ (BOOL)yrac_delegateProxyBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)Lrac_buttonClickedSignalBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)Rrac_willDismissSignalBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
