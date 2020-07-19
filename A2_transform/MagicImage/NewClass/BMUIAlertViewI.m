#import "BMUIAlertViewI.h"
@implementation BMUIAlertViewI
+ (BOOL)Frac_delegateProxy:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)Orac_buttonClickedSignal:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)Qrac_willDismissSignal:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
