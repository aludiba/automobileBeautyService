#import "BMMAS_VIEW_CONTROLLERH+Bm.h"
@implementation BMMAS_VIEW_CONTROLLERH (Bm)
+ (BOOL)fmas_topLayoutGuideBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)Pmas_topLayoutGuideTopBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)umas_topLayoutGuideBottomBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)fmas_bottomLayoutGuideBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)ymas_bottomLayoutGuideTopBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)nmas_bottomLayoutGuideBottomBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
