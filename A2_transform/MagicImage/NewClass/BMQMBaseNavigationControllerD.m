#import "BMQMBaseNavigationControllerD.h"
@implementation BMQMBaseNavigationControllerD
+ (BOOL)XviewDidLoad:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)fprefersStatusBarHidden:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
