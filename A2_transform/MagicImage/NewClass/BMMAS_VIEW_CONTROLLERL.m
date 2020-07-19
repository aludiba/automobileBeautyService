#import "BMMAS_VIEW_CONTROLLERL.h"
@implementation BMMAS_VIEW_CONTROLLERL
+ (BOOL)Qmas_topLayoutGuide:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)Umas_topLayoutGuideTop:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)Gmas_topLayoutGuideBottom:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)kmas_bottomLayoutGuide:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)Rmas_bottomLayoutGuideTop:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)Dmas_bottomLayoutGuideBottom:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
