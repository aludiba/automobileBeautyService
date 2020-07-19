#import "BKMIBaseNavigationC+BmHb.h"
@implementation BKMIBaseNavigationC (BmHb)
+ (BOOL)viewDidLoadBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)pushViewControllerAnimatedBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)BKreturnCustomBmHb:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
