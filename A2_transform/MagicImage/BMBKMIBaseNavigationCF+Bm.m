#import "BMBKMIBaseNavigationCF+Bm.h"
@implementation BMBKMIBaseNavigationCF (Bm)
+ (BOOL)EviewDidLoadBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)sPushviewcontrollerLAnimatedBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)CBKreturnCustomBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
