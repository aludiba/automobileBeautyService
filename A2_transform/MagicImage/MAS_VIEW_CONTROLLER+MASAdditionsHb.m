#import "MAS_VIEW_CONTROLLER+MASAdditionsHb.h"
@implementation MAS_VIEW_CONTROLLER (MASAdditionsHb)
+ (BOOL)mas_topLayoutGuideHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)mas_topLayoutGuideTopHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)mas_topLayoutGuideBottomHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)mas_bottomLayoutGuideHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)mas_bottomLayoutGuideTopHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)mas_bottomLayoutGuideBottomHb:(NSInteger)hb {
    return hb % 34 == 0;
}

@end
