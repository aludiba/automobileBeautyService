#import "BMBMQMBaseNavigationControllerQU.h"
@implementation BMBMQMBaseNavigationControllerQU
+ (BOOL)PHviewdidloadbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)ZIprefersstatusbarhiddenbm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
