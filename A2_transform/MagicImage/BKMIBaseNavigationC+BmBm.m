#import "BKMIBaseNavigationC+BmBm.h"
@implementation BKMIBaseNavigationC (BmBm)
+ (BOOL)viewDidLoadBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)pushViewControllerAnimatedBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)BKreturnCustomBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
