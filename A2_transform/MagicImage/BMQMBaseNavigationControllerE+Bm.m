#import "BMQMBaseNavigationControllerE+Bm.h"
@implementation BMQMBaseNavigationControllerE (Bm)
+ (BOOL)YviewDidLoadBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)fprefersStatusBarHiddenBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
