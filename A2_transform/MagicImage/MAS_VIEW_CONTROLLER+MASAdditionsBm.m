#import "MAS_VIEW_CONTROLLER+MASAdditionsBm.h"
@implementation MAS_VIEW_CONTROLLER (MASAdditionsBm)
+ (BOOL)mas_topLayoutGuideBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)mas_topLayoutGuideTopBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)mas_topLayoutGuideBottomBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)mas_bottomLayoutGuideBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)mas_bottomLayoutGuideTopBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)mas_bottomLayoutGuideBottomBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
