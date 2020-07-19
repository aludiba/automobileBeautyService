#import "BMBKMIBaseTabBarVCW.h"
@implementation BMBKMIBaseTabBarVCW
+ (BOOL)xviewDidLoad:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)vBKinitWithChildController:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
