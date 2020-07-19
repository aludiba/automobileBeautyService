#import "MAS_VIEW_CONTROLLER+MASAdditionsBmBmBmHbHb.h"
@implementation MAS_VIEW_CONTROLLER (MASAdditionsBmBmBmHbHb)
+ (BOOL)mas_topLayoutGuideBmBmBmHbHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)mas_topLayoutGuideTopBmBmBmHbHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)mas_topLayoutGuideBottomBmBmBmHbHb:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)mas_bottomLayoutGuideBmBmBmHbHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)mas_bottomLayoutGuideTopBmBmBmHbHb:(NSInteger)hb {
    return hb % 40 == 0;
}
+ (BOOL)mas_bottomLayoutGuideBottomBmBmBmHbHb:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
