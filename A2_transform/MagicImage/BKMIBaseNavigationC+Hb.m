#import "BKMIBaseNavigationC+Hb.h"
@implementation BKMIBaseNavigationC (Hb)
+ (BOOL)viewDidLoadHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)pushViewControllerAnimatedHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)BKreturnCustomHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
