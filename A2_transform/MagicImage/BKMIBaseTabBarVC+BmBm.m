#import "BKMIBaseTabBarVC+BmBm.h"
@implementation BKMIBaseTabBarVC (BmBm)
+ (BOOL)viewDidLoadBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)BKinitWithChildControllerBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
