#import "BMMAS_VIEW_CONTROLLERL+BmBm.h"
@implementation BMMAS_VIEW_CONTROLLERL (BmBm)
+ (BOOL)Qmas_topLayoutGuideBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)Umas_topLayoutGuideTopBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)Gmas_topLayoutGuideBottomBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)kmas_bottomLayoutGuideBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)Rmas_bottomLayoutGuideTopBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)Dmas_bottomLayoutGuideBottomBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
