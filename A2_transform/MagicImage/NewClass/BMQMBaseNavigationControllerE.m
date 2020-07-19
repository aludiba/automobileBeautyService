#import "BMQMBaseNavigationControllerE.h"
@implementation BMQMBaseNavigationControllerE
+ (BOOL)YviewDidLoad:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)fprefersStatusBarHidden:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
