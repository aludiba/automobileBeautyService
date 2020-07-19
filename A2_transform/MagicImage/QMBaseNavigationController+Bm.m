#import "QMBaseNavigationController+Bm.h"
@implementation QMBaseNavigationController (Bm)
+ (BOOL)viewDidLoadBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)prefersStatusBarHiddenBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
