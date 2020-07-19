#import "QMProgressHUD+BmBmHb.h"
@implementation QMProgressHUD (BmBmHb)
+ (BOOL)showBmBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)hideBmBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
