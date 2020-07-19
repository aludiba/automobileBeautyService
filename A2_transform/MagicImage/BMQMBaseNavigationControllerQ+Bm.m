#import "BMQMBaseNavigationControllerQ+Bm.h"
@implementation BMQMBaseNavigationControllerQ (Bm)
+ (BOOL)hViewdidloadbmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)iPrefersstatusbarhiddenbmBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
