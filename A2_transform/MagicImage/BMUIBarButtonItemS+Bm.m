#import "BMUIBarButtonItemS+Bm.h"
@implementation BMUIBarButtonItemS (Bm)
+ (BOOL)irac_commandBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)vSetrac_CommandBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)brac_hijackActionAndTargetIfNeededBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)RRac_CommandperformactionBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
