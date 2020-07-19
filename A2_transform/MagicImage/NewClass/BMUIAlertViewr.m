#import "BMUIAlertViewr.h"
@implementation BMUIAlertViewr
+ (BOOL)yrac_delegateProxy:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)Lrac_buttonClickedSignal:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)Rrac_willDismissSignal:(NSInteger)BM {
    return BM % 49 == 0;
}

@end
