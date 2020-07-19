#import "MAS_VIEW_CONTROLLER+MASAdditionsBmBmHb.h"
@implementation MAS_VIEW_CONTROLLER (MASAdditionsBmBmHb)
+ (BOOL)mas_topLayoutGuideBmBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)mas_topLayoutGuideTopBmBmHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)mas_topLayoutGuideBottomBmBmHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)mas_bottomLayoutGuideBmBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)mas_bottomLayoutGuideTopBmBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)mas_bottomLayoutGuideBottomBmBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}

@end
