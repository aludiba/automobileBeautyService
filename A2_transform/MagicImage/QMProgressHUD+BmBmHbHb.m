#import "QMProgressHUD+BmBmHbHb.h"
@implementation QMProgressHUD (BmBmHbHb)
+ (BOOL)showBmBmHbHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)hideBmBmHbHb:(NSInteger)hb {
    return hb % 50 == 0;
}

@end
