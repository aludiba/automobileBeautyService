#import "MAS_VIEW_CONTROLLER+MASAdditionsBmBm.h"
@implementation MAS_VIEW_CONTROLLER (MASAdditionsBmBm)
+ (BOOL)mas_topLayoutGuideBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)mas_topLayoutGuideTopBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)mas_topLayoutGuideBottomBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)mas_bottomLayoutGuideBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)mas_bottomLayoutGuideTopBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)mas_bottomLayoutGuideBottomBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
