#import "QMProgressHUD+Bm.h"
@implementation QMProgressHUD (Bm)
+ (BOOL)showBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)hideBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
