#import "hbBKMIBaseTabBarVCk.h"
@implementation hbBKMIBaseTabBarVCk
+ (BOOL)PviewDidLoad:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)fBKinitWithChildController:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
