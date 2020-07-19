#import "hbMAS_VIEW_CONTROLLERH.h"
@implementation hbMAS_VIEW_CONTROLLERH
+ (BOOL)Nmas_topLayoutGuide:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)Umas_topLayoutGuideTop:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)Omas_topLayoutGuideBottom:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)Hmas_bottomLayoutGuide:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)Jmas_bottomLayoutGuideTop:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)Gmas_bottomLayoutGuideBottom:(NSInteger)hb {
    return hb % 13 == 0;
}

@end
