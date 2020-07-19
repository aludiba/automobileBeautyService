#import "BMQMBaseNavigationControllerQ.h"
@implementation BMQMBaseNavigationControllerQ
+ (BOOL)hViewdidloadbm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)iPrefersstatusbarhiddenbm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
