#import "BMMAS_VIEW_CONTROLLERL+BmBmHb.h"
@implementation BMMAS_VIEW_CONTROLLERL (BmBmHb)
+ (BOOL)Qmas_topLayoutGuideBmBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)Umas_topLayoutGuideTopBmBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)Gmas_topLayoutGuideBottomBmBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)kmas_bottomLayoutGuideBmBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)Rmas_bottomLayoutGuideTopBmBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)Dmas_bottomLayoutGuideBottomBmBmHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
