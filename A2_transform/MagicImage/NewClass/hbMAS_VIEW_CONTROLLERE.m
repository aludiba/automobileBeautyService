#import "hbMAS_VIEW_CONTROLLERe.h"
@implementation hbMAS_VIEW_CONTROLLERe
+ (BOOL)jmas_topLayoutGuide:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)jmas_topLayoutGuideTop:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)tmas_topLayoutGuideBottom:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)qmas_bottomLayoutGuide:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)mmas_bottomLayoutGuideTop:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)Bmas_bottomLayoutGuideBottom:(NSInteger)hb {
    return hb % 21 == 0;
}

@end
