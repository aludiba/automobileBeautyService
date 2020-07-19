#import "BMBKMIBaseTabBarVCC.h"
@implementation BMBKMIBaseTabBarVCC
+ (BOOL)bviewDidLoad:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)aBKinitWithChildController:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
