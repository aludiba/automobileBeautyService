#import "BMUIBarButtonItemT+Bm.h"
@implementation BMUIBarButtonItemT (Bm)
+ (BOOL)erac_commandBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)MSetrac_CommandBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)Qrac_hijackActionAndTargetIfNeededBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)NRac_CommandperformactionBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
