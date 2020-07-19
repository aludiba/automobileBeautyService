#import "BKMIBaseTabBarVC+Bm.h"
@implementation BKMIBaseTabBarVC (Bm)
+ (BOOL)viewDidLoadBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)BKinitWithChildControllerBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
