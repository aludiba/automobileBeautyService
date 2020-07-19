#import "QMBaseNavigationController+BmBm.h"
@implementation QMBaseNavigationController (BmBm)
+ (BOOL)viewDidLoadBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)prefersStatusBarHiddenBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
