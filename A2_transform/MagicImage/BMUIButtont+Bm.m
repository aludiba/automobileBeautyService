#import "BMUIButtont+Bm.h"
@implementation BMUIButtont (Bm)
+ (BOOL)drac_commandBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)eSetrac_CommandBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)trac_hijackActionAndTargetIfNeededBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)bRac_CommandperformactionBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
