#import "BKMIBaseNavigationC+Bm.h"
@implementation BKMIBaseNavigationC (Bm)
+ (BOOL)viewDidLoadBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)pushViewControllerAnimatedBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)BKreturnCustomBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
