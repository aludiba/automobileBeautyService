#import "BMBKMIBaseNavigationCH+Bm.h"
@implementation BMBKMIBaseNavigationCH (Bm)
+ (BOOL)GviewDidLoadBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)pPushviewcontrollerLAnimatedBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)eBKreturnCustomBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
