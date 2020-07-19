#import "QMBaseNavigationController+BmHb.h"
@implementation QMBaseNavigationController (BmHb)
+ (BOOL)viewDidLoadBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)prefersStatusBarHiddenBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
