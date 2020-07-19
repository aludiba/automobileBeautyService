#import "MAS_VIEW_CONTROLLER+MASAdditionsBmBmBmHb.h"
@implementation MAS_VIEW_CONTROLLER (MASAdditionsBmBmBmHb)
+ (BOOL)mas_topLayoutGuideBmBmBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)mas_topLayoutGuideTopBmBmBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)mas_topLayoutGuideBottomBmBmBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)mas_bottomLayoutGuideBmBmBmHb:(NSInteger)hb {
    return hb % 17 == 0;
}
+ (BOOL)mas_bottomLayoutGuideTopBmBmBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)mas_bottomLayoutGuideBottomBmBmBmHb:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
