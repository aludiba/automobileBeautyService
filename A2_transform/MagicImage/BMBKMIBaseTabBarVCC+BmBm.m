#import "BMBKMIBaseTabBarVCC+BmBm.h"
@implementation BMBKMIBaseTabBarVCC (BmBm)
+ (BOOL)bviewDidLoadBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)aBKinitWithChildControllerBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
