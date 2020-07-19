#import "QMProgressHUD+BmBm.h"
@implementation QMProgressHUD (BmBm)
+ (BOOL)showBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)hideBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
