#import "MAS_VIEW_CONTROLLER+MASAdditionsBmBmBm.h"
@implementation MAS_VIEW_CONTROLLER (MASAdditionsBmBmBm)
+ (BOOL)mas_topLayoutGuideBmBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)mas_topLayoutGuideTopBmBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)mas_topLayoutGuideBottomBmBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)mas_bottomLayoutGuideBmBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)mas_bottomLayoutGuideTopBmBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)mas_bottomLayoutGuideBottomBmBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
