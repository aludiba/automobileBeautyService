#import "BMBKMIBaseTabBarVCW+Bm.h"
@implementation BMBKMIBaseTabBarVCW (Bm)
+ (BOOL)xviewDidLoadBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)vBKinitWithChildControllerBm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
