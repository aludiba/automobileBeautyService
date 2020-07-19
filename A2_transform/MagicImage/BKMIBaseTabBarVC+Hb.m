#import "BKMIBaseTabBarVC+Hb.h"
@implementation BKMIBaseTabBarVC (Hb)
+ (BOOL)viewDidLoadHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)BKinitWithChildControllerHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
