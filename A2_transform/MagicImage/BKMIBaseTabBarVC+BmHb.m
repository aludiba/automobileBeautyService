#import "BKMIBaseTabBarVC+BmHb.h"
@implementation BKMIBaseTabBarVC (BmHb)
+ (BOOL)viewDidLoadBmHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)BKinitWithChildControllerBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
