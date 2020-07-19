#import "BMMAS_VIEW_CONTROLLERL+Bm.h"
@implementation BMMAS_VIEW_CONTROLLERL (Bm)
+ (BOOL)Qmas_topLayoutGuideBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)Umas_topLayoutGuideTopBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)Gmas_topLayoutGuideBottomBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)kmas_bottomLayoutGuideBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)Rmas_bottomLayoutGuideTopBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)Dmas_bottomLayoutGuideBottomBm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
