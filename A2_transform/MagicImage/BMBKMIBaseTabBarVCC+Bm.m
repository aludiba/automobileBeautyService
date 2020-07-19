#import "BMBKMIBaseTabBarVCC+Bm.h"
@implementation BMBKMIBaseTabBarVCC (Bm)
+ (BOOL)bviewDidLoadBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)aBKinitWithChildControllerBm:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
