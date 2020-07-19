#import "BMMAS_VIEW_CONTROLLERH.h"
@implementation BMMAS_VIEW_CONTROLLERH
+ (BOOL)fmas_topLayoutGuide:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)Pmas_topLayoutGuideTop:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)umas_topLayoutGuideBottom:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)fmas_bottomLayoutGuide:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)ymas_bottomLayoutGuideTop:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)nmas_bottomLayoutGuideBottom:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
